import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharelocal/provider/auth_provider.dart';
import 'package:sharelocal/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthProvider())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "ShareLocal",
          theme: ThemeData(
              colorScheme:
                  ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
              useMaterial3: true),
          home: const WelcomeScreen()),
    );
  }
}
