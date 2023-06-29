import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sharelocal/provider/auth_provider.dart';
import 'package:sharelocal/screens/home_screen.dart';
import 'package:sharelocal/screens/register_screen.dart';
//import 'package:sharelocal/widgets/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/community.svg',
              height: 300,
            ),

            const Text(
              "Let's get started",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Never a better time than now to start.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black38,
              ),
            ),
            const SizedBox(height: 25),
            // custom button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: FilledButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blueGrey.shade800),
                ),
                onPressed: () async {
                  if (ap.isSignedIn == true) {
                    await ap.getDataFromSP().whenComplete(
                          () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          ),
                        );
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  }
                },
                child: const Text("Get started"),
              ),
            )
          ],
        ),
      ))),
    );
  }
}
