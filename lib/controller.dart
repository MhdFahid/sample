import 'package:get/get.dart';
import 'package:sample/user_data_model.dart';
import 'api/api.dart';

import 'model.dart';

class DataController extends GetxController {
  var isLoading = false.obs;
  var courses = <UserData>[].obs;
  var levels = <Level>[].obs;
  var lessonVideos = <LessonVideo>[].obs;

  final ApiService apiService = ApiService();

  @override
  void onInit() {
    fetchCourses();
    super.onInit();
  }

  void fetchCourses() async {
    isLoading(true);
    try {
      var fetchedCourses = await apiService.getCourses();
      courses.assignAll(fetchedCourses);
    } finally {
      isLoading(false);
    }
  }

  void fetchLevelsByCourse(int courseId, int sectionId) async {
    isLoading(true);
    try {
      var fetchedLevels =
          await apiService.getLevelsByCourse(courseId, sectionId);
      levels.assignAll(fetchedLevels);
    } finally {
      isLoading(false);
    }
  }

  void fetchLessonVideos(int lessonId) async {
    isLoading(true);
    try {
      var fetchedVideos = await apiService.getLessonVideos(lessonId);
      lessonVideos.assignAll(fetchedVideos);
    } finally {
      isLoading(false);
    }
  }
}
