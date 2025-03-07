// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_modules/child_details_module/view/child_details_screen.dart';
import 'package:vax_care_user/app_models/child.dart';
import 'package:vax_care_user/app_modules/home_page_module/widget/info_chip.dart';

class ChildCard extends StatelessWidget {
  final Child child;
  const ChildCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChildDetailsScreen(
            childId: child.childId,
          ),
        ),
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              child: Hero(
                tag: "child-${child.childId}",
                child: CachedNetworkImage(
                  imageUrl: child.photoUrl,
                  height: screenSize.height * 0.175,
                  width: screenSize.width * 0.45,
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, progress) =>
                      CircularProgressIndicator(
                    value: progress.progress,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.primaryColor,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              child.name,
              style: TextStyle(
                fontSize: 25,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "DOB: ${DateFormat('dd MMM yyyy').format(child.birthdate)}",
              style: TextStyle(fontSize: 15, color: Colors.grey[600]),
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InfoChip(icon: Icons.bloodtype, text: child.bloodGroup),
                SizedBox(width: 5),
                InfoChip(icon: Icons.person, text: child.gender),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
