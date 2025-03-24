import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:vax_care_user/app_constants/app_urls.dart';
import 'package:vax_care_user/app_modules/vaccine_history_module/model/vaccine_history_model.dart';

Future<VaccinationHistoryModel> getChildVaccinationHistory({
  required int childId,
}) async {
  try {
    Map<String, dynamic> params = {
      "child_id": childId.toString(),
    };

    final resp = await http.get(
      Uri.parse(AppUrls.getChildVaccinationHistoryUrl)
          .replace(queryParameters: params),
      headers: <String, String>{
        "Content-Type": "application/json; charset=utf-8"
      },
    );

    if (resp.statusCode == 200) {
      final dynamic decoded = jsonDecode(resp.body);
      final VaccinationHistoryModel response =
          VaccinationHistoryModel.fromJson(decoded);

      return response;
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
      throw Exception(
        errorResponse['message'] ?? 'Unknown error',
      );
    }
  } on SocketException {
    throw Exception('No Internet connection');
  } on HttpException {
    throw Exception('Server error');
  } on FormatException {
    throw Exception('Bad response format');
  } catch (e) {
    throw Exception('Unexpected error: ${e.toString()}');
  }
}
