import 'dart:convert';
import 'dart:io';
import 'package:flutter_todo_app/utils/api_status.dart';
import 'package:http/http.dart' as http;



class PhotoService {
  final String _baseUrl = "https://jsonplaceholder.typicode.com/photos";

   fetchPhotos() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        List<dynamic> jsonData = json.decode(response.body);
       return Success(data:jsonData );
        //return photoFromJson(response.body).take(20).toList();
      }
      return Failure(errorResponse:response.body );
    }on HttpException {
      return Failure( errorResponse: "Internal server error");
    } on FormatException {
      return Failure( errorResponse: "Invalid format");
    } on SocketException {
      return Failure( errorResponse: "No internet connection");
    } catch (e) {
      return Failure(errorResponse:e.toString() );
    }
  }
}
