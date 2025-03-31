import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:vax_care_user/app_constants/app_urls.dart';

import 'package:vax_care_user/app_modules/register_module/class/parent_registration_details.dart';
import 'package:vax_care_user/app_modules/register_module/model/parent_action_response_model/parent_action_response_model.dart';

Future<ParentActionResponseModel> registerParent({
  required ParentRegistrationDetails parentRegistrationDetails,
}) async {
  try {
    var request = http.MultipartRequest(
      "POST",
      Uri.parse(AppUrls.parentRegistrationUrl),
    );

    request.fields['name'] = parentRegistrationDetails.name;
    request.fields['email'] = parentRegistrationDetails.email;
    request.fields['password'] = parentRegistrationDetails.password;
    request.fields['address'] = parentRegistrationDetails.address;
    request.fields['phone'] = parentRegistrationDetails.phone;
    request.fields['relationship'] = parentRegistrationDetails.relationship;

    var imageStream =
        http.ByteStream(parentRegistrationDetails.image.openRead());
    var imageLength = await parentRegistrationDetails.image.length();
    var multipartFile = http.MultipartFile(
      'image',
      imageStream,
      imageLength,
      filename: parentRegistrationDetails.image.path.split("/").last,
    );
    request.files.add(multipartFile);

    // Send request
    final resp = await request.send();

    // Convert the response stream to a string
    final responseBody = await resp.stream.bytesToString();

    if (resp.statusCode == 201) {
      final dynamic decoded = jsonDecode(responseBody);
      final ParentActionResponseModel response =
          ParentActionResponseModel.fromJson(decoded);
      return response;
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(responseBody);
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
