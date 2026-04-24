import 'package:avaliacao_flutter/navigation/navigation.navbar.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  static const Color primaryBlue = Color(0xFF1A4B8E);
  static const Color iceBlue = Color(0xFFF0F7FF);

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const NavBar()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: iceBlue,
      body: Stack(
        children: [
          Positioned(
            top: -50,
            right: -50,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: primaryBlue.withOpacity(0.05),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(color: primaryBlue.withOpacity(0.1), blurRadius: 30, offset: const Offset(0, 10)),
                    ],
                  ),
                  child: const Icon(Icons.playlist_add_check_rounded, size: 80, color: primaryBlue),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Minhas Tarefas",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: primaryBlue, letterSpacing: -1),
                ),
                const SizedBox(height: 10),
                Text("Organização e Foco", style: TextStyle(color: primaryBlue.withOpacity(0.6), fontWeight: FontWeight.w500)),
                const SizedBox(height: 50),
                const SizedBox(
                  width: 40,
                  height: 40,
                  child: CircularProgressIndicator(strokeWidth: 3, valueColor: AlwaysStoppedAnimation<Color>(primaryBlue)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}