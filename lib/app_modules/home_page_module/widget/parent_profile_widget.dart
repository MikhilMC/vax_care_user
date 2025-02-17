import 'package:flutter/material.dart';
import 'package:vax_care_user/app_modules/home_page_module/widget/profile_item.dart';

class ParentProfileWidget extends StatelessWidget {
  const ParentProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Picture
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      'assets/images/profile_placeholder.png',
                    ), // Change this
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
            ProfileItem(icon: Icons.person, title: 'Name', value: 'John Doe'),
            ProfileItem(
                icon: Icons.email,
                title: 'Email',
                value: 'johndoe@example.com'),
            ProfileItem(
                icon: Icons.phone, title: 'Phone', value: '+1234567890'),
            ProfileItem(icon: Icons.lock, title: 'Password', value: '********'),
            ProfileItem(
                icon: Icons.child_care,
                title: 'Number of Children',
                value: '2'),
            ProfileItem(
                icon: Icons.location_on,
                title: 'Address',
                value: '123, Street Name, City'),
            ProfileItem(
                icon: Icons.family_restroom,
                title: 'Relationship',
                value: 'Father'),

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
      ),
    );
  }
}
