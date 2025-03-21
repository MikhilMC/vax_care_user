import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_constants/app_urls.dart';
import 'package:vax_care_user/app_modules/child_details_module/bloc/child_details_bloc.dart';
import 'package:vax_care_user/app_modules/child_details_module/utils/helper.dart';
import 'package:vax_care_user/app_modules/child_details_module/widget/bmi_card.dart';
import 'package:vax_care_user/app_modules/child_details_module/widget/detail_card.dart';
import 'package:vax_care_user/app_widgets/custom_error_widget.dart';

class ChildDetailsScreen extends StatefulWidget {
  final int childId;

  const ChildDetailsScreen({
    super.key,
    required this.childId,
  });

  @override
  State<ChildDetailsScreen> createState() => _ChildDetailsScreenState();
}

class _ChildDetailsScreenState extends State<ChildDetailsScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<ChildDetailsBloc>()
        .add(ChildDetailsEvent.childDetailsFetched(widget.childId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Child Details')),
      body: BlocBuilder<ChildDetailsBloc, ChildDetailsState>(
        builder: (context, state) {
          if (state is ChildDetailsError) {
            return CustomErrorWidget(
              errorMessage: state.errorMessage,
            );
          }

          if (state is! ChildDetailsSuccess) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          }

          final childDetails = state.child;

          final nextVaccinationStatus =
              Helper.calculateNextVaccinationStatus(childDetails.birthdate);
          final nutritionGuide =
              Helper.getNutritionGuide(childDetails.birthdate);

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Profile Picture
                Hero(
                  tag: "child-${childDetails.id}",
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: CachedNetworkImageProvider(
                      "${AppUrls.baseUrl}/${childDetails.photo}",
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Child Details
                DetailCard(
                  icon: Icons.person,
                  title: 'Name',
                  value: childDetails.name,
                ),
                DetailCard(
                  icon: Icons.cake,
                  title: 'Birth Date',
                  value:
                      DateFormat('dd MMM yyyy').format(childDetails.birthdate),
                ),
                DetailCard(
                  icon: Icons.bloodtype,
                  title: 'Blood Group',
                  value: childDetails.bloodGroup,
                ),
                DetailCard(
                  icon: Icons.transgender,
                  title: 'Gender',
                  value: childDetails.gender,
                ),
                DetailCard(
                  icon: Icons.height,
                  title: 'Height',
                  value: '${childDetails.height} cm',
                ),
                DetailCard(
                  icon: Icons.monitor_weight,
                  title: 'Weight',
                  value: '${childDetails.weight} kg',
                ),
                if (childDetails.medicalConditions != null)
                  DetailCard(
                    icon: Icons.medical_services,
                    title: 'Medical Conditions',
                    value: childDetails.medicalConditions!,
                  ),

                const SizedBox(height: 20),

                // BMI Card
                BMICard(
                  height: childDetails.height,
                  weight: childDetails.weight,
                  birthdate: childDetails.birthdate,
                ),

                const SizedBox(height: 20),

                // Next Vaccination Status
                Card(
                  color: Colors.blue[50],
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: const Icon(Icons.vaccines, color: Colors.blue),
                    title: const Text('Next Vaccination',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(nextVaccinationStatus),
                  ),
                ),

                const SizedBox(height: 20),

                // Nutrition Guide
                Card(
                  color: Colors.green[50],
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: const Icon(Icons.restaurant, color: Colors.green),
                    title: const Text('Nutrition Guide',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(nutritionGuide),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
