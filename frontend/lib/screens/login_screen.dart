import 'package:flutter/material.dart';
import 'package:rozhelp_app/widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Icon(Icons.home_repair_service, size: 48, color: Color(0xFF1565C0)),
              ),
              const SizedBox(height: 24),
              const Text(
                'RozHelp',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D47A1),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Roz ki problem ka fast, local aur trusted solution.',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 28),
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Mobile number',
                  prefixIcon: Icon(Icons.phone_android),
                ),
              ),
              const SizedBox(height: 16),
              PrimaryButton(
                text: 'Continue with OTP',
                icon: Icons.login_rounded,
                onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
              ),
              const SizedBox(height: 12),
              const Text(
                'Demo version: OTP flow backend se easily connect kiya ja sakta hai.',
                style: TextStyle(color: Colors.black45),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
