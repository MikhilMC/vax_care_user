import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_modules/add_child_module/view/add_child_screen.dart';
import 'package:vax_care_user/app_modules/home_page_module/bloc/retreive_user_name_bloc/retreive_user_name_bloc.dart';
import 'package:vax_care_user/app_modules/home_page_module/bloc/retreive_userid_bloc/retreive_userid_bloc.dart';
import 'package:vax_care_user/app_modules/home_page_module/widget/children_grid.dart';
import 'package:vax_care_user/app_modules/home_page_module/widget/parent_profile_widget.dart';
import 'package:vax_care_user/app_modules/home_page_module/widget/vaccine_booking_widget.dart';
import 'package:vax_care_user/app_modules/login_module/view/login_screen.dart';
import 'package:vax_care_user/app_modules/vaccine_history_module/view/vaccine_history_screen.dart';
import 'package:vax_care_user/app_utils/app_localstorage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;

  final PageController _pageController = PageController();

  late List<Widget> _appBodies;

  @override
  void initState() {
    _appBodies = [
      Center(
        child: ChildrenGrid(),
      ),
      Center(
        child: VaccineBookingWidget(),
      ),
      Center(
        child: ParentProfileWidget(),
      )
    ];
    super.initState();
    context
        .read<RetreiveUserNameBloc>()
        .add(RetreiveUserNameEvent.userNameFetched());

    context.read<RetreiveUseridBloc>().add(RetreiveUseridEvent.useridFetched());
  }

  Future<void> _logout() async {
    await AppLocalstorage.userLogout();
    if (mounted) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<RetreiveUserNameBloc, RetreiveUserNameState>(
          builder: (context, state) {
            if (state is UserNameError) {
              return Text("Error: ${state.errorMessage}");
            }

            if (state is! UserNameSuccess) {
              return Text("Loading...");
            }

            return Text("Hello, ${state.name}");
          },
        ),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          BlocBuilder<RetreiveUseridBloc, RetreiveUseridState>(
            builder: (context, state) {
              if (state is UserIDFailed) {
                return Text("Error: ${state.errorMessage}");
              }

              if (state is! UserIDSuccess) {
                return Text("Loading...");
              }

              return TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddChildScreen(
                        isLoggedIn: true,
                        parentId: state.userId,
                      ),
                    ),
                  );
                },
                child: Text("Add Child"),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: AppColors.secondaryColor,
          backgroundColor: AppColors.tertiaryColor,
          iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return IconThemeData(
                  color: AppColors.tertiaryColor,
                ); // Icon color for selected item
              }
              return IconThemeData(
                color: AppColors.primaryColor,
              ); // Icon color for unselected items
            },
          ),
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return TextStyle(
                  color: AppColors.primaryColor, // Text color for selected item
                  fontWeight: FontWeight.bold,
                );
              }
              return const TextStyle(
                color: Colors.black, // Text color for unselected items
                fontWeight: FontWeight.normal,
              );
            },
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              _currentPageIndex = index;
            });
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          },
          selectedIndex: _currentPageIndex,
          // labelBehavior: ,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.vaccines),
              label: "Vaccine Booking",
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        children: _appBodies,
      ),
      drawer: Drawer(
        backgroundColor: AppColors.tertiaryColor,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Text(
                'VaxCare',
                style: TextStyle(
                  color: AppColors.tertiaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                color: AppColors.primaryColor,
              ),
              title: const Text(
                'Vaccine History',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => VaccineHistoryScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: AppColors.primaryColor,
              ),
              title: const Text(
                'LogOut',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: _logout,
            ),
          ],
        ),
      ),
    );
  }
}
