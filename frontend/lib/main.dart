import 'package:flutter/material.dart';
import 'package:rozhelp_app/screens/booking_detail_screen.dart';
import 'package:rozhelp_app/screens/home_screen.dart';
import 'package:rozhelp_app/screens/login_screen.dart';
import 'package:rozhelp_app/screens/quotes_screen.dart';
import 'package:rozhelp_app/screens/request_service_screen.dart';

void main() {
  runApp(const RozHelpApp());
}

class RozHelpApp extends StatelessWidget {
  const RozHelpApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF1565C0),
      brightness: Brightness.light,
      primary: const Color(0xFF1565C0),
      secondary: const Color(0xFF42A5F5),
      surface: Colors.white,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RozHelp',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: const Color(0xFFF7FBFF),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF0D47A1),
          elevation: 0,
          centerTitle: true,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFD6E7FF)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFD6E7FF)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFF1565C0), width: 1.2),
          ),
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const LoginScreen(),
        '/home': (_) => const HomeScreen(),
        '/request': (_) => const RequestServiceScreen(),
        '/quotes': (_) => const QuotesScreen(),
        '/booking': (_) => const BookingDetailScreen(),
      },
    );
  }
}
