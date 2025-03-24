// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:vax_care_user/app_blocs/bloc/children_bloc.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_modules/add_child_module/bloc/add_child_bloc.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/bloc/book_vaccine_bloc/book_vaccine_bloc.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/bloc/slots_bloc/slots_bloc.dart';
import 'package:vax_care_user/app_modules/child_details_module/bloc/child_details_bloc.dart';
import 'package:vax_care_user/app_modules/home_page_module/bloc/healthcare_provider_list/healthcare_provider_list_bloc.dart';
import 'package:vax_care_user/app_modules/home_page_module/bloc/parent_profile_bloc/parent_profile_bloc.dart';
import 'package:vax_care_user/app_modules/home_page_module/bloc/retreive_user_name_bloc/retreive_user_name_bloc.dart';
import 'package:vax_care_user/app_modules/home_page_module/bloc/retreive_userid_bloc/retreive_userid_bloc.dart';
import 'package:vax_care_user/app_modules/home_page_module/view/home_screen.dart';
import 'package:vax_care_user/app_modules/introduction_screen_module/view/introduction_screen.dart';
import 'package:vax_care_user/app_modules/login_module/bloc/parent_login_bloc.dart';
import 'package:vax_care_user/app_modules/login_module/view/login_screen.dart';
import 'package:vax_care_user/app_modules/register_module/bloc/parent_register_bloc.dart';
import 'package:vax_care_user/app_modules/vaccine_history_module/bloc/child_vaccination_history_bloc.dart';
import 'package:vax_care_user/app_utils/app_localstorage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool isFirstLaunch = await AppLocalstorage.getIntroScreenStatus();
  bool isLoggedIn = await AppLocalstorage.getLoginStatus();

  Widget initialScreen;

  if (isFirstLaunch) {
    initialScreen = const IntroductionScreen();
  } else {
    if (isLoggedIn) {
      initialScreen = const HomeScreen();
    } else {
      initialScreen = const LoginScreen();
    }
  }
  runApp(MyApp(
    initialScreen: initialScreen,
  ));
}

class MyApp extends StatelessWidget {
  final Widget initialScreen;
  const MyApp({
    super.key,
    required this.initialScreen,
  });

  // Add a global navigator key
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ParentRegisterBloc(),
        ),
        BlocProvider(
          create: (context) => AddChildBloc(),
        ),
        BlocProvider(
          create: (context) => ParentLoginBloc(),
        ),
        BlocProvider(
          create: (context) => ChildrenBloc(),
        ),
        BlocProvider(
          create: (context) => ChildDetailsBloc(),
        ),
        BlocProvider(
          create: (context) => ParentProfileBloc(),
        ),
        BlocProvider(
          create: (context) => HealthcareProviderListBloc(),
        ),
        BlocProvider(
          create: (context) => SlotsBloc(),
        ),
        BlocProvider(
          create: (context) => BookVaccineBloc(),
        ),
        BlocProvider(
          create: (context) => ChildVaccinationHistoryBloc(),
        ),
        BlocProvider(
          create: (context) => RetreiveUserNameBloc(),
        ),
        BlocProvider(
          create: (context) => RetreiveUseridBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'VaxCare User',
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          useMaterial3: true,
        ),
        home: initialScreen,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
