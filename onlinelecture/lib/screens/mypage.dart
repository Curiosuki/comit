import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlinelecture/components/profile_lists.dart';
import 'package:onlinelecture/theme/i_set_color.dart';
import 'package:onlinelecture/theme/i_set_size.dart';
import 'package:onlinelecture/theme/i_set_string.dart';
import 'package:onlinelecture/theme/i_set_text.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: Text(brand_name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        child: Image.network('https://i.pinimg.com/564x/6e/91/eb/6e91ebc73a77f8e666960f59993920b9.jpg', fit: BoxFit.cover,)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Text('· 이름: ', style: ISetText.bodyblack,),
                          Text('김수빈', style: ISetText.bodyblack,),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 성별: ', style: ISetText.bodyblack,),
                          Text('여자', style: ISetText.bodyblack,),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 생일: ', style: ISetText.bodyblack,),
                          Text('2000년 1월 1일', style: ISetText.bodyblack,),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 지역: ', style: ISetText.bodyblack,),
                          Text('수원 매탄점', style: ISetText.bodyblack,),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 전화: ', style: ISetText.bodyblack,),
                          Text('010-0000-0000', style: ISetText.bodyblack,),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
            iDivider,
            ProfileLists(
              text: '내강의실',
              icon: Icon(FontAwesomeIcons.chalkboardTeacher, color: mainColor,),
            ),
            iDivider,
            ProfileLists(
              text: '자주 묻는 질문',
              icon: Icon(FontAwesomeIcons.question, color: mainColor,),
            ),
            iDivider,
            ProfileLists(
              text: '세팅',
              icon: Icon(FontAwesomeIcons.cog, color: mainColor,),
            ),
            iDivider,
            ProfileLists(
              text: '로그아웃',
              icon: Icon(FontAwesomeIcons.signOutAlt, color: mainColor,),
            ),
            iDivider,

          ],
        ),
      ),
    );
  }
}
