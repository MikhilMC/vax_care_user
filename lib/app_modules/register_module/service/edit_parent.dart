import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:vax_care_user/app_constants/app_urls.dart';

import 'package:vax_care_user/app_modules/register_module/class/parent_updation_details.dart';
import 'package:vax_care_user/app_modules/register_module/model/parent_action_response_model/parent_action_response_model.dart';
import 'package:vax_care_user/app_utils/app_localstorage.dart';

Future<ParentActionResponseModel> editParent({
  required ParentUpdationDetails parentUpdationDetails,
}) async {
  try {
    if (parentUpdationDetails.address == null &&
        parentUpdationDetails.email == null &&
        parentUpdationDetails.image == null &&
        parentUpdationDetails.name == null &&
        parentUpdationDetails.password == null &&
        parentUpdationDetails.phone == null &&
        parentUpdationDetails.relationship == null) {
      throw Exception("There are nothing to update.");
    }

    var request = http.MultipartRequest(
      "PATCH",
      Uri.parse(AppUrls.editParentUrl),
    );

    final int parentId = await AppLocalstorage.getUserId();
    request.fields['id'] = parentId.toString();
    if (parentUpdationDetails.name != null) {
      request.fields['name'] = parentUpdationDetails.name!;
    }
    if (parentUpdationDetails.email != null) {
      request.fields['email'] = parentUpdationDetails.email!;
    }
    if (parentUpdationDetails.password != null) {
      request.fields['password'] = parentUpdationDetails.password!;
    }
    if (parentUpdationDetails.address != null) {
      request.fields['address'] = parentUpdationDetails.address!;
    }
    if (parentUpdationDetails.phone != null) {
      request.fields['phone'] = parentUpdationDetails.phone!;
    }
    if (parentUpdationDetails.relationship != null) {
      request.fields['relationship'] = parentUpdationDetails.relationship!;
    }

    if (parentUpdationDetails.image != null) {
      var imageStream =
          http.ByteStream(parentUpdationDetails.image!.openRead());
      var imageLength = await parentUpdationDetails.image!.length();
      var multipartFile = http.MultipartFile(
        'image',
        imageStream,
        imageLength,
        filename: parentUpdationDetails.image!.path.split("/").last,
      );
      request.files.add(multipartFile);
    }

    // Send request
    final resp = await request.send();

    // Convert the response stream to a string
    final responseBody = await resp.stream.bytesToString();

    if (resp.statusCode == 200) {
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
