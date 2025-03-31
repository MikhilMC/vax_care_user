import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:vax_care_user/app_constants/app_urls.dart';
import 'package:vax_care_user/app_modules/add_child_module/class/update_child_details.dart';
import 'package:vax_care_user/app_modules/add_child_module/model/child_action_response_model/child_action_response_model.dart';
import 'package:vax_care_user/app_utils/app_localstorage.dart';

Future<ChildActionResponseModel> updateChild({
  required UpdateChildDetails childDetails,
}) async {
  try {
    if (childDetails.bloodGroup == null &&
        childDetails.dateOfBirth == null &&
        childDetails.gender == null &&
        childDetails.height == null &&
        childDetails.image == null &&
        childDetails.medicalConditions == null &&
        childDetails.name == null &&
        childDetails.weight == null) {
      throw Exception("There are nothing to update.");
    }

    int parentId = await AppLocalstorage.getUserId();
    var request = http.MultipartRequest(
      "PATCH",
      Uri.parse(AppUrls.updateChildUrl),
    );

    request.fields['id'] = childDetails.childId.toString();

    if (childDetails.name != null) {
      request.fields['name'] = childDetails.name!;
    }

    if (childDetails.gender != null) {
      request.fields['gender'] = childDetails.gender!;
    }

    if (childDetails.height != null) {
      request.fields['height'] = childDetails.height!.toString();
    }

    if (childDetails.weight != null) {
      request.fields['weight'] = childDetails.weight!.toString();
    }

    if (childDetails.dateOfBirth != null) {
      request.fields['birthdate'] =
          "${childDetails.dateOfBirth!.year}-${childDetails.dateOfBirth!.month.toString().padLeft(2, '0')}-${childDetails.dateOfBirth!.day.toString().padLeft(2, '0')}";
    }

    if (childDetails.bloodGroup != null) {
      request.fields['blood_group'] = childDetails.bloodGroup!;
    }
    request.fields['parent'] = parentId.toString();
    if (childDetails.medicalConditions != null) {
      request.fields['medical_conditions'] = childDetails.medicalConditions!;
    }

    if (childDetails.image != null) {
      var imageStream = http.ByteStream(childDetails.image!.openRead());
      var imageLength = await childDetails.image!.length();
      var multipartFile = http.MultipartFile(
        'photo',
        imageStream,
        imageLength,
        filename: childDetails.image!.path.split("/").last,
      );
      request.files.add(multipartFile);
    }

    // Send request
    final resp = await request.send();

    // Convert the response stream to a string
    final responseBody = await resp.stream.bytesToString();

    if (resp.statusCode == 200) {
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
