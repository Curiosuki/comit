
import 'package:flutter/material.dart';
import 'package:hijackupgrade/Services/auth.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';
import 'package:hijackupgrade/Widgets/i_Button_PhotoPicker.dart';
import 'package:hijackupgrade/Widgets/i_platform/i_platform_alertDialog.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {

  Future<void> _signOut(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _confirmSignOut(BuildContext context) async {
    final didRequestSignOut = await PlatformAlertDialog(
      title: '로그아웃',
      content: '로그아웃을 하시겠습니까?',
      defaultActionText: '로그아웃',
      cancelActionText: '취소',
    ).show(context);

    if (didRequestSignOut == true) {
      _signOut(context);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('프로필 계정'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          iHeight16,
          Container(
              //decoration: BoxDecoration(color: mainColor),
              child: IButtonPhotoPicker()),
          Divider(),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.person_pin,
              color: mainColor,
            ),
            title: Text(
              '프로필',
              style: ITextStyle.bodyblack,
            ),
            trailing: Icon(Icons.arrow_right),
          ),
          Divider(),
          ListTile(
            onTap: () =>
                Navigator.pushNamed(context, '/learningProgressScreen'),
            leading: Icon(
              MdiIcons.televisionPlay,
              color: mainColor,
            ),
            title: Text(
              '강의학습목록',
              style: ITextStyle.bodyblack,
            ),
            trailing: Icon(Icons.arrow_right),
          ),
          Divider(),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/ordersScreen'),
            leading: Icon(
              MdiIcons.clipboardList,
              color: mainColor,
            ),
            title: Text(
              '교재주문목록',
              style: ITextStyle.bodyblack,
            ),
            trailing: Icon(Icons.arrow_right),
          ),
          Divider(),
          ListTile(
            onTap: () => _confirmSignOut(context),
            leading: Icon(
              MdiIcons.logout,
              color: mainColor,
            ),
            title: Text(
              '로그아웃',
              style: ITextStyle.bodyblack,
            ),
            trailing: Icon(Icons.arrow_right),
          ),
          Divider(),
        ],
      ),
    );
  }
}
