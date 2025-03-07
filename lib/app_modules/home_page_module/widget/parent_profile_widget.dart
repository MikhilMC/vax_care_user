import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_constants/app_urls.dart';
import 'package:vax_care_user/app_modules/home_page_module/bloc/parent_profile_bloc/parent_profile_bloc.dart';
import 'package:vax_care_user/app_modules/home_page_module/widget/profile_item.dart';
import 'package:vax_care_user/app_widgets/custom_error_widget.dart';

class ParentProfileWidget extends StatefulWidget {
  const ParentProfileWidget({super.key});

  @override
  State<ParentProfileWidget> createState() => _ParentProfileWidgetState();
}

class _ParentProfileWidgetState extends State<ParentProfileWidget> {
  @override
  void initState() {
    super.initState();
    context
        .read<ParentProfileBloc>()
        .add(ParentProfileEvent.parentProfileDetailsFetched());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ParentProfileBloc, ParentProfileState>(
        builder: (context, state) {
          if (state is ParentProfileDetailsError) {
            return CustomErrorWidget(
              errorMessage: state.errorMessage,
            );
          }

          if (state is! ParentProfileDetailsSuccess) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          }

          final profileDetails = state.parentProfile;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Profile Picture
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: CachedNetworkImageProvider(
                          '${AppUrls.baseUrl}/${profileDetails.image}',
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Profile Details
                ProfileItem(
                  icon: Icons.person,
                  title: 'Name',
                  value: profileDetails.name,
                ),
                ProfileItem(
                  icon: Icons.email,
                  title: 'Email',
                  value: profileDetails.email,
                ),
                ProfileItem(
                  icon: Icons.phone,
                  title: 'Phone',
                  value: profileDetails.phone,
                ),
                ProfileItem(
                  icon: Icons.lock,
                  title: 'Password',
                  value: '*' * profileDetails.password.length,
                ),
                ProfileItem(
                  icon: Icons.child_care,
                  title: 'Number of Children',
                  value: profileDetails.noOfChildren.toString(),
                ),
                ProfileItem(
                  icon: Icons.location_on,
                  title: 'Address',
                  value: profileDetails.address,
                ),
                ProfileItem(
                  icon: Icons.family_restroom,
                  title: 'Relationship',
                  value: profileDetails.relationship,
                ),

                const SizedBox(height: 20),

                // Edit & Logout Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                      label: const Text('Edit Profile'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
