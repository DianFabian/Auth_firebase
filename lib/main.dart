import 'package:auth_firebase/features/app/splash_screen/splash_screen.dart';
import 'package:auth_firebase/features/user_auth/presentation/pages/home_page.dart';
import 'package:auth_firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:auth_firebase/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyA-NrUL9enYIV_E3zF6KMahC5vW623D80Y",
        appId: "1:440655199610:android:17e3491fd82f2326b1eac3",
        messagingSenderId: "440655199610",
        projectId: "auth-c22f9",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => const SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: LoginPage(),
        ),
        '/login': (context) => const LoginPage(),
        '/signUp': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
