import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model.dart';
import '../user_data_model.dart';

const String baseUrl = 'https://trogon.info/tutorpro/edspark/api/';
const String token =
    'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE5IiwidXNlcl9pZCI6IjE5Iiwicm9sZV9pZCI6IjIiLCJyb2xlX2xhYmVsIjoiVXNlciIsInBob25lIjoiOTk0NjgwMTEwMCJ9.D0tUEBGDi8gtc1vEK6GL4aFdwDEd6uBCpIQ7G0J5fEM';

class ApiService extends GetxController {
  Future<List<UserData>> getCourses() async {
    final response =
        await http.get(Uri.parse('${baseUrl}my_course?auth_token=$token'));

    if (response.statusCode == 200) {
      final List<UserData> data1 = (json.decode(response.body) as List)
          .map((json) => UserData.fromJson(json))
          .toList();
      print(data1);
      return data1;
    } else {
      throw Exception('Failed to load courses');
    }
  }

  Future<List<Level>> getLevelsByCourse(int courseId, int sectionId) async {
    final response = await http.get(Uri.parse(
        '${baseUrl}levels_by_course?course_id=$courseId&section_id=$sectionId&auth_token=$token'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body) as List;
      return data.map((level) => Level.fromJson(level)).toList();
    } else {
      throw Exception('Failed to load levels');
    }
  }

  Future<List<LessonVideo>> getLessonVideos(int lessonId) async {
    final response = await http.get(Uri.parse(
        '${baseUrl}get_lesson_videos?lesson_id=$lessonId&auth_token=$token'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body) as List;
      return data.map((video) => LessonVideo.fromJson(video)).toList();
    } else {
      throw Exception('Failed to load lesson videos');
    }
  }
}
