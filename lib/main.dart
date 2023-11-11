import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lookadoc/screens/doctor_profile.dart';
import 'package:lookadoc/screens/firebase_auth.dart';
import 'package:lookadoc/main_page.dart';
import 'package:lookadoc/screens/my_appointments.dart';
import 'package:lookadoc/screens/skip.dart';
import 'package:lookadoc/screens/user_profile.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? user;

  Future<void> _getUser() async {
    user = _auth.currentUser!;
  }

  @override
  Widget build(BuildContext context) {
    _getUser();
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => user == null ? const Skip() : const MainPage(),
        '/login': (context) => const FireBaseAuth(),
        '/home': (context) => const MainPage(),
        '/profile': (context) => const UserProfile(),
        '/MyAppointments': (context) => const MyAppointments(),
        '/DoctorProfile': (context) => const DoctorProfile(),
      },
      theme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      //home: FirebaseAuthDemo(),
    );
  }
}
