import 'package:flutter/material.dart';
import 'package:hijackupgrade/Screens/home_screen.dart';
import 'package:hijackupgrade/Screens/LogIn/login_screen.dart';
import 'package:hijackupgrade/Services/auth.dart';
import 'package:hijackupgrade/Services/database.dart';
import 'package:provider/provider.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context);
    return StreamBuilder<User>(
      stream: auth.onAuthStateChanged,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          User user = snapshot.data;
          if (user == null) {
            return LoginScreen.create(context);
          }

          return Provider<Database>(
            create: (context) => FirebaseDatabase(uid: user.uid),
            child: HomeScreen(),
          );
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
