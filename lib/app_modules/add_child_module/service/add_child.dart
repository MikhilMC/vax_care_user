import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:vax_care_user/app_constants/app_urls.dart';
import 'package:vax_care_user/app_modules/add_child_module/class/child_details.dart';
import 'package:vax_care_user/app_modules/add_child_module/model/child_action_response_model/child_action_response_model.dart';

Future<ChildActionResponseModel> addChild({
  required ChildDetails childDetails,
}) async {
  try {
    var request = http.MultipartRequest(
      "POST",
      Uri.parse(AppUrls.childRegistrationUrl),
    );

    request.fields['name'] = childDetails.name;
    request.fields['gender'] = childDetails.gender;
    request.fields['height'] = childDetails.height.toString();
    request.fields['weight'] = childDetails.weight.toString();
    request.fields['birthdate'] =
        "${childDetails.dateOfBirth.year}-${childDetails.dateOfBirth.month.toString().padLeft(2, '0')}-${childDetails.dateOfBirth.day.toString().padLeft(2, '0')}";
    request.fields['blood_group'] = childDetails.bloodGroup;
    request.fields['parent'] = childDetails.parentId.toString();
    if (childDetails.medicalConditions != null) {
      request.fields['medical_conditions'] = childDetails.medicalConditions!;
    }

    var imageStream = http.ByteStream(childDetails.image.openRead());
    var imageLength = await childDetails.image.length();
    var multipartFile = http.MultipartFile(
      'photo',
      imageStream,
      imageLength,
      filename: childDetails.image.path.split("/").last,
    );
    request.files.add(multipartFile);

    // Send request
    final resp = await request.send();

    // Convert the response stream to a string
    final responseBody = await resp.stream.bytesToString();

    if (resp.statusCode == 201) {
      final dynamic decoded = jsonDecode(responseBody);
      final ChildActionResponseModel response =
          ChildActionResponseModel.fromJson(decoded);
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
