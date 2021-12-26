import 'package:flutter/material.dart';

import 'build_content.dart';
import 'profile_image.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        buildProfileImage(),
        const BuildContent(),
      ],
    ));
  }
}
