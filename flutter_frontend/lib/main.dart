import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'services/admob_service.dart';
import 'theme/app_theme.dart';
import 'pages/landing_page.dart';
import 'pages/auth_page.dart';
import 'pages/dashboard_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize AdMob (safe initialization - won't crash if not configured)
  try {
    await AdMobService().initialize();
  } catch (e) {
    debugPrint('AdMob initialization failed (this is OK if not configured yet): $e');
  }
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lofit',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/auth': (context) => const AuthPage(),
        '/dashboard': (context) => const DashboardPage(),
      },
    );
  }
}
