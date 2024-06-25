class LessonVideo {
  final String uid;
  final String name;
  final String place;
  final String url;

  LessonVideo({
    required this.uid,
    required this.name,
    required this.place,
    required this.url,
  });

  factory LessonVideo.fromJson(Map<String, dynamic> json) {
    return LessonVideo(
      uid: json['uid'] ?? '',
      name: json['name'] ?? '',
      place: json['place'] ?? '',
      url: json['url'] ?? '',
    );
  }
}

class Level {
  final String uid;
  final String name;
  final String place;
  final String url;

  Level({
    required this.uid,
    required this.name,
    required this.place,
    required this.url,
  });

  factory Level.fromJson(Map<String, dynamic> json) {
    return Level(
      uid: json['uid'] ?? '',
      name: json['name'] ?? '',
      place: json['place'] ?? '',
      url: json['url'] ?? '',
    );
  }
}
class UserData {
  final String id;
  final String firstName;
  final String lastName;
  final String phone;
  final String countryCode;
  final String? phoneSecondary;
  final String userEmail;
  final String email;
  final String gender;
  final String place;
  final String roleId;
  final String roleLabel;
  final String deviceId;
  final String status;
  final String courseId;
  final String courseName;
  final String courseType;
  final String image;
  final String? androidVersion;
  final String deviceIdMessage;
  final String noCourseText;
  final String noCourseImage;
  final String contactEmail;
  final String contactPhone;
  final String contactWhatsapp;
  final String contactAddress;
  final String contactAbout;
  final String zoomId;
  final String zoomPassword;
  final String zoomApiKey;
  final String zoomSecretKey;
  final String zoomWebDomain;
  final String token;
  final String privacyPolicy;
  final String privacyPolicyText;
  final int coins;

  UserData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.countryCode,
    this.phoneSecondary,
    required this.userEmail,
    required this.email,
    required this.gender,
    required this.place,
    required this.roleId,
    required this.roleLabel,
    required this.deviceId,
    required this.status,
    required this.courseId,
    required this.courseName,
    required this.courseType,
    required this.image,
    this.androidVersion,
    required this.deviceIdMessage,
    required this.noCourseText,
    required this.noCourseImage,
    required this.contactEmail,
    required this.contactPhone,
    required this.contactWhatsapp,
    required this.contactAddress,
    required this.contactAbout,
    required this.zoomId,
    required this.zoomPassword,
    required this.zoomApiKey,
    required this.zoomSecretKey,
    required this.zoomWebDomain,
    required this.token,
    required this.privacyPolicy,
    required this.privacyPolicyText,
    required this.coins,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      countryCode: json['country_code'] as String,
      phoneSecondary: json['phone_secondary'] as String?,
      userEmail: json['user_email'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
      place: json['place'] as String,
      roleId: json['role_id'] as String,
      roleLabel: json['role_label'] as String,
      deviceId: json['device_id'] as String,
      status: json['status'] as String,
      courseId: json['course_id'] as String,
      courseName: json['course_name'] as String,
      courseType: json['course_type'] as String,
      image: json['image'] as String,
      androidVersion: json['android_version'] as String?,
      deviceIdMessage: json['device_id_message'] as String,
      noCourseText: json['no_course_text'] as String,
      noCourseImage: json['no_course_image'] as String,
      contactEmail: json['contact_email'] as String,
      contactPhone: json['contact_phone'] as String,
      contactWhatsapp: json['contact_whatsapp'] as String,
      contactAddress: json['contact_address'] as String,
      contactAbout: json['contact_about'] as String,
      zoomId: json['zoom_id'] as String,
      zoomPassword: json['zoom_password'] as String,
      zoomApiKey: json['zoom_api_key'] as String,
      zoomSecretKey: json['zoom_secret_key'] as String,
      zoomWebDomain: json['zoom_web_domain'] as String,
      token: json['token'] as String,
      privacyPolicy: json['privacy_policy'] as String,
      privacyPolicyText: json['privacy_policy_text'] as String,
      coins: json['coins'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'phone': phone,
      'country_code': countryCode,
      'phone_secondary': phoneSecondary,
      'user_email': userEmail,
      'email': email,
      'gender': gender,
      'place': place,
      'role_id': roleId,
      'role_label': roleLabel,
      'device_id': deviceId,
      'status': status,
      'course_id': courseId,
      'course_name': courseName,
      'course_type': courseType,
      'image': image,
      'android_version': androidVersion,
      'device_id_message': deviceIdMessage,
      'no_course_text': noCourseText,
      'no_course_image': noCourseImage,
      'contact_email': contactEmail,
      'contact_phone': contactPhone,
      'contact_whatsapp': contactWhatsapp,
      'contact_address': contactAddress,
      'contact_about': contactAbout,
      'zoom_id': zoomId,
      'zoom_password': zoomPassword,
      'zoom_api_key': zoomApiKey,
      'zoom_secret_key': zoomSecretKey,
      'zoom_web_domain': zoomWebDomain,
      'token': token,
      'privacy_policy': privacyPolicy,
      'privacy_policy_text': privacyPolicyText,
      'coins': coins,
    };
  }
}

class Subject {
  final String id;
  final String title;
  final String courseId;
  final String levelId;
  final String order;
  final String thumbnail;
  final String background;
  final String icon;
  final String free;
  final String? instructorId;

  Subject({
    required this.id,
    required this.title,
    required this.courseId,
    required this.levelId,
    required this.order,
    required this.thumbnail,
    required this.background,
    required this.icon,
    required this.free,
    this.instructorId,
  });

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      id: json['id'] as String,
      title: json['title'] as String,
      courseId: json['course_id'] as String,
      levelId: json['level_id'] as String,
      order: json['order'] as String,
      thumbnail: json['thumbnail'] as String,
      background: json['background'] as String,
      icon: json['icon'] as String,
      free: json['free'] as String,
      instructorId: json['instructor_id'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'course_id': courseId,
      'level_id': levelId,
      'order': order,
      'thumbnail': thumbnail,
      'background': background,
      'icon': icon,
      'free': free,
      'instructor_id': instructorId,
    };
  }
}

class Data {
  final UserData userData;
  final List<Subject> subjects;
  final List<dynamic> pyqExams;
  final List<dynamic> upcomingExams;
  final String syllabus;
  final String practiceLink;

  Data({
    required this.userData,
    required this.subjects,
    required this.pyqExams,
    required this.upcomingExams,
    required this.syllabus,
    required this.practiceLink,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      userData: UserData.fromJson(json['userdata'] as Map<String, dynamic>),
      subjects: (json['subjects'] as List<dynamic>).map((e) => Subject.fromJson(e as Map<String, dynamic>)).toList(),
      pyqExams: json['pyq_exams'] as List<dynamic>,
      upcomingExams: json['upcoming_exams'] as List<dynamic>,
      syllabus: json['syllabus'] as String,
      practiceLink: json['practice_link'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userdata': userData.toJson(),
      'subjects': subjects.map((e) => e.toJson()).toList(),
      'pyq_exams': pyqExams,
      'upcoming_exams': upcomingExams,
      'syllabus': syllabus,
      'practice_link': practiceLink,
    };
  }
}
