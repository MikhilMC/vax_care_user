import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:vax_care_user/app_constants/app_urls.dart';

import 'package:vax_care_user/app_models/child_list_model/child_list_model.dart';
import 'package:vax_care_user/app_utils/app_localstorage.dart';

Future<List<ChildListModel>> getChildren() async {
  try {
    int parentId = await AppLocalstorage.getUserId();
    Map<String, dynamic> params = {
      "id": parentId.toString(),
    };

    // Construct the URL with query parameters
    final url = Uri.parse(AppUrls.getChildrenUrl).replace(
      queryParameters: params,
    );

    final resp = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (resp.statusCode == 200) {
      final List<dynamic> decoded = jsonDecode(resp.body);
      final response =
          decoded.map((item) => ChildListModel.fromJson(item)).toList();

      return response;
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
      throw Exception(
        '${errorResponse['message'] ?? 'Unknown error'}',
      );
    }
  } on SocketException {
    throw Exception('Server error');
  } on HttpException {
    throw Exception('Something went wrong');
  } on FormatException {
    throw Exception('Bad request');
  } catch (e) {
    throw Exception(e.toString());
  }
}
