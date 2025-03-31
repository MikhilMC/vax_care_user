class AppUrls {
  static const String baseUrl = "https://vqp6fbbv-8001.inc1.devtunnels.ms";
  static const String userAppUrl = "$baseUrl/user_app";

  static const String parentRegistrationUrl =
      "$userAppUrl/parent_registration/";
  static const String childRegistrationUrl = "$userAppUrl/child_registration/";
  static const String parentLoginUrl = "$userAppUrl/login/";

  static const String getChildrenUrl = "$userAppUrl/child_list/";
  static const String getChildDetailsUrl = "$userAppUrl/view_single_child/";
  static const String updateChildUrl = "$userAppUrl/update_child_profile/";
  static const String getProfileDetailsUrl = "$userAppUrl/view_profile/";
  static const String getHealthcareProviderListUrl =
      "$userAppUrl/health_provider_list/";
  static const String getSlotsUrl = "$userAppUrl/timeslot/";
  static const String bookVaccineUrl = "$userAppUrl/bookings/";

  static const String getChildVaccinationHistoryUrl =
      "$userAppUrl/vaccination_history/";
  static const String editParentUrl = "$userAppUrl/update_parent_profile/";
}
