class AppUrls {
  static const String baseUrl = "https://vqp6fbbv-8001.inc1.devtunnels.ms";
  static const String userUrl = "$baseUrl/user_app";

  static const String parentRegistrationUrl = "$userUrl/parent_registration/";
  static const String childRegistrationUrl = "$userUrl/child_registration/";
  static const String parentLoginUrl = "$userUrl/login/";

  static const String getChildrenUrl = "$userUrl/child_list/";
  static const String getChildDetailsUrl = "$userUrl/view_single_child/";
  static const String getProfileDetailsUrl = "$userUrl/view_profile/";
  static const String getHealthcareProviderListUrl =
      "$userUrl/health_provider_list/";
}
