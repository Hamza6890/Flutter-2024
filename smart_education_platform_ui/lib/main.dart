import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Screens/Assessment Screen.dart';
import 'Screens/Content Delivery Screen.dart';
import 'Screens/Interactive Learning Screen.dart';
import 'Screens/Learning Path Screen.dart';
import 'Screens/Communication Screen.dart';
import 'Screens/Notifications Screen.dart';
import 'Screens/Progress Tracking Screen.dart';
import 'Screens/Resources Screen.dart';
import 'Screens/Settings Screen.dart';
import 'Screens/Support Screen.dart';
import 'Screens/Profile Screen.dart';
import 'Screens/login_screen/login_screen.dart';
import 'Screens/splash_screen/Splash_Screen.dart';
import 'User Dashboard Screen.dart';
import 'first_screen/Registration Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Education Platform',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/firstScreen', page: () => FirstScreen()),
        GetPage(name: '/dashboard', page: () => UserDashboardScreen()),
        GetPage(name: '/profile', page: () => ProfileScreen()),
        GetPage(name: '/assessments', page: () => AssessmentScreen()),
        GetPage(name: '/learning-path', page: () => LearningPathScreen()),
        GetPage(name: '/content-delivery', page: () => ContentDeliveryScreen()),
        GetPage(name: '/interactive-learning', page: () => InteractiveLearningScreen()),
        GetPage(name: '/progress-tracking', page: () => ProgressTrackingScreen()),
        GetPage(name: '/communication', page: () => CommunicationScreen()),
        GetPage(name: '/resources', page: () => ResourcesScreen()),
        GetPage(name: '/support', page: () => SupportScreen()),
        GetPage(name: '/notifications', page: () => NotificationsScreen()),
        GetPage(name: '/settings', page: () => SettingsScreen()),
        GetPage(name: '/login', page: () => login_screen()),
      ],
    );
  }
}
