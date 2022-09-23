import 'package:flutter/material.dart';
import 'package:youtube_api/screens/home_screen.dart';
import 'package:youtube_api/screens/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignInScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://icon-library.com/images/youtube-icon-black-and-white/youtube-icon-black-and-white-0.jpg'),
                fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
