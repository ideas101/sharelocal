import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharelocal/provider/auth_provider.dart';
import 'package:sharelocal/screens/welcome_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        shadowColor: Colors.black,
        elevation: 4,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              backgroundColor: Colors.blueGrey,
              backgroundImage: NetworkImage(ap.userModel.profilePic),
              radius: 50,
            ),
            const SizedBox(height: 10),
            Text(
              ap.userModel.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            Text("${ap.userModel.phoneNumber} | ${ap.userModel.email}"),
            const SizedBox(height: 20),
            Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: const Divider()),
            const SizedBox(height: 20),
            Text(ap.userModel.bio),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                ap.userSignOut().then(
                      (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreen(),
                        ),
                      ),
                    );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.blueGrey.shade800),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 30.0)),
              ),
              icon: const Icon(
                Icons.exit_to_app,
              ),
              label: const Text("Sign out", style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      )),
    );
  }
}
