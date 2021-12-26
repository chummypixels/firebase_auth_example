import 'package:firebase_setup/screens/login_screen.dart';
import 'package:firebase_setup/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BuildContent extends StatelessWidget {
  const BuildContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Auth>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: [
            const Divider(
              thickness: 1,
            ),
            const Text(
              'Username ',
              style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text('Lisandro',
                style: TextStyle(fontSize: 12.0, color: Colors.grey[600])),
            const Divider(
              thickness: 1,
            ),
            const Text(
              'Phone number ',
              style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text('+1 435093490',
                style: TextStyle(fontSize: 12.0, color: Colors.grey[600])),
            const Divider(
              thickness: 1,
            ),
            const Text(
              'Interests ',
              style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text('Football, Wrestling, Hockey and Rugby',
                style: TextStyle(fontSize: 12.0, color: Colors.grey[600])),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () async {
                  await auth.logout();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                      (route) => false);
                },
                child: const Text('Logout'))
          ],
        ),
      ),
    );
  }
}
