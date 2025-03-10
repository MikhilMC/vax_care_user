import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:flutter/foundation.dart';
import 'package:vax_care_user/app_constants/app_urls.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/class/vaccine_booking_details.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/model/vaccine_booking_response_model/vaccine_booking_response_model.dart';

Future<VaccineBookingResponseModel> bookVaccine({
  required VaccineBookingDetails vaccineBookingDetails,
}) async {
  try {
    Map<String, dynamic> body = {
      "child": vaccineBookingDetails.childId.toString(),
      "health_provider": vaccineBookingDetails.healthcareProviderId.toString(),
      "time_slot": vaccineBookingDetails.timeSlotId.toString(),
      "date":
          "${vaccineBookingDetails.date.year}-${vaccineBookingDetails.date.month.toString().padLeft(2, '0')}-${vaccineBookingDetails.date.day.toString().padLeft(2, '0')}",
    };

    final resp = await http.post(
      Uri.parse(AppUrls.bookVaccineUrl),
      body: jsonEncode(body),
      headers: <String, String>{
        "Content-Type": "application/json; charset=utf-8"
      },
    );

    if (resp.statusCode == 201) {
      final dynamic decoded = jsonDecode(resp.body);
      final VaccineBookingResponseModel response =
          VaccineBookingResponseModel.fromJson(decoded);
      if (kDebugMode) {
        print(response);
      }
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
