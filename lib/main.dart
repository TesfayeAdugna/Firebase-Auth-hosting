import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/app/splash_screen/splash_screen.dart';
import 'package:flutter_application_1/features/user_auth/presentation/pages/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyBwT6zX86GUQY3mxyxctbAkNwdOJoUkoXo",
       
        projectId: "video-call-auth",
        
        messagingSenderId: "453184111105",
        appId: "1:453184111105:web:647e34ecf33cf628c27600",
      
      
      
     
     
      ) 
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreeen(child: LoginPage(),),
    );
  }
}

