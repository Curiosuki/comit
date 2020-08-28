import 'package:andrea/theme/i_set_size.dart';
import 'package:andrea/theme/i_set_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatelessWidget {

  void _signInAnoymously() async{
    final authResult = await FirebaseAuth.instance.signInAnonymously();
    print('${authResult.user.uid}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildConent(),
    );
  }

  _buildConent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Wannabe', textAlign: TextAlign.center, style: ISetText.headline,),
          Text('Change Your Life', textAlign: TextAlign.center, style: ISetText.bodyGrey,),
          iHeightMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){},
                icon: Icon(FontAwesomeIcons.google),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(FontAwesomeIcons.facebook),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.email),
              ),
              IconButton(
                onPressed: _signInAnoymously,
                icon: Icon(FontAwesomeIcons.signInAlt),
              ),
            ],
          )
        ],
      ),
    );
  }
}



