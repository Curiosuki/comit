import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hijackupgrade/Screens/LogIn/login_manager.dart';
import 'package:hijackupgrade/Services/auth.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';
import 'package:hijackupgrade/Widgets/i_Button_Flat_Circle_Icon.dart';
import 'package:hijackupgrade/Widgets/i_platform/i_platform_exception_alert_dialog.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  final LogInManager manager;
  final bool isLoading;

  LoginScreen({Key key, @required this.manager, @required this.isLoading})
      : super(key: key);

  static Widget create(BuildContext context) {
    final auth = Provider.of<AuthBase>(context);

    return ChangeNotifierProvider<ValueNotifier<bool>>(
      create: (_) => ValueNotifier<bool>(false),
      child: Consumer<ValueNotifier<bool>>(
        builder: (_, isLoading, __) => Provider<LogInManager>(
          create: (_) => LogInManager(auth: auth, isLoading: isLoading),
          child: Consumer<LogInManager>(
              builder: (context, manager, _) => LoginScreen(
                    manager: manager,
                    isLoading: isLoading.value,
                  )),
        ),
      ),
    );
  }

  void _showSignInError(BuildContext context, PlatformException exception) {
    PlatformExceptionAlertDialog(
      title: '로그인을 다시 시도해주세요',
      exception: exception,
    ).show(context);
  }

  Future<void> _signInAnonymously(BuildContext context) async {
    try {
      await manager.signInAnonymously();
    } on PlatformException catch (e) {
      if (e.code != 'ERROR_ABORTED_BY_USER') {
        _showSignInError(context, e);
      }
    }
  }

  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      await manager.signInWithGoogle();
    } on PlatformException catch (e) {
      if (e.code != 'ERROR_ABORTED_BY_USER') {
        _showSignInError(context, e);
      }
    }
  }

  Future<void> _signInWithFacebook(BuildContext context) async {
    try {
      await manager.signInWithFacebook();
    } on PlatformException catch (e) {
      if (e.code != 'ERROR_ABORTED_BY_USER') {
        _showSignInError(context, e);
      }
    }
  }

  Widget _buildHeader() {
    if (isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return TypewriterAnimatedTextKit(
        speed: Duration(milliseconds: 100),
        repeatForever: true,
        text: [
          "이제 \n내 손에서  ",
          "전국에 있는 \n영어 선생님들이  ",
          "우리 학교 \n영어내신과 수능을  ",
          "해결해준다!  ",
        ],
        textStyle: TextStyle(
          fontSize: 35.0,
          fontFamily: "Agne",
        ),
        textAlign: TextAlign.start,
        alignment: AlignmentDirectional.topStart // or Alignment.topLeft
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 230,
            ),
            SizedBox(
              width: 250.0,
              height: 180,
              child: _buildHeader(),
            ),
            iHeight8,
            Text(
              '하이잭어학연구소',
              style: ITextStyle.bodyGrey,
            ),
            SizedBox(
              height: 80,
            ),
            Column(
              children: [
                Container(
                  height: 60,
                  child: FlatButton(
                    padding: EdgeInsets.all(8),
                    color: Color(0xFFffe901),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.network(
                          'https://image.flaticon.com/icons/png/512/2111/2111466.png',
                          width: 60,
                          height: 60,
                        ),
                        iWidth16,
                        Expanded(
                            child: Text(
                          '카카오 로그인으로 시작하기',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))
                      ],
                    ),
                  ),
                ),
                iHeight16,
                InkWell(
                    onTap: isLoading ? null : () => _signInAnonymously(context),
                    child: Text(
                      '바로 시작하기',
                      style: ITextStyle.bodyGrey,
                    )),
                iHeight36,
                Stack(
                  alignment: Alignment.center,
                  children: [
                    iThinDivider,
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      color: Colors.white,
                      child: Text(
                        '소설 로그인',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                iHeight36,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IButtonCircleIcon(
                      onPressed:
                          isLoading ? null : () => _signInWithGoogle(context),
                      icon: Icon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                    IButtonCircleIcon(
                      onPressed:
                          isLoading ? null : () => _signInWithFacebook(context),
                      icon: Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                    IButtonCircleIcon(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.apple,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
