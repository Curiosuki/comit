import 'package:comit/components/button/main_button.dart';
import 'package:comit/components/button/press_function.dart';
import 'package:comit/components/button/avatar_button.dart';
import 'package:comit/models/model_product.dart';
import 'package:comit/models/datas/data_user.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_icons.dart';
import 'package:comit/theme/i_set_string.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Tab1View extends StatefulWidget {
  @override
  _Tab1ViewState createState() => _Tab1ViewState();
}

class _Tab1ViewState extends State<Tab1View> {


  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'Y-JQ-RCyPpQ',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: <Widget>[
          Text(
            'Tutor',
            style: ISetText.body.copyWith(fontWeight: FontWeight.bold),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                child: AvatarButton(radius: 50.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(FontAwesomeIcons.award, color: badgeColor),
                  iHeightMedium,
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: sellerInfo[index].userName,
                            style:
                                ISetText.textSectionBlack),
                        TextSpan(text: ' Tutor', style: ISetText.textSectionGrey),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  iHeightLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: iChrome,
                      ),
                      Expanded(
                        flex: 9,
                        child: Text(sellerInfo[index].site.webSite, style: ISetText.textSectionGrey,),
                      ),
                    ],
                  ),
                  iHeightMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: iYoutube,
                      ),
                      Expanded(
                        flex: 9,
                        child: Text(sellerInfo[index].site.youTube, style: ISetText.textSectionGrey,),
                      ),
                    ],
                  ),
                  iHeightMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: iFacebook,
                      ),
                      Expanded(
                        flex: 9,
                        child: Text(sellerInfo[index].site.faceBook, style: ISetText.textSectionGrey,),
                      ),
                    ],
                  ),

                  iHeightMedium,

                ],
              ),
            ],
          ),
          iHeightMedium,
          Container(
            margin: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: MainButton(
                    pressedButton: () => Navigator.pushNamed(context, '/chatpage'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Chat',
                          style: ISetText.body,
                        ),
                        iWidthMedium,
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 50,
                          child: Center(child: iComment),
                        ),
                      ],
                    ),

                  ),
                ),
                iWidthLarge,
                Flexible(
                  child: pressButton(
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Enroll',
                          style: ISetText.body,
                        ),
                        iWidthMedium,
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 50,
                          child: Center(child: iClass),
                        ),
                      ],
                    ),
                    selected: false,
                  ),
                ),
              ],
            ),
          ),
          //iHeightLarge,
          iDivider,
          Text(
            'Summary',
            style: ISetText.body.copyWith(fontWeight: FontWeight.bold),
          ),
          iHeightLarge,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: iLocation,
                  ),
                  Expanded(
                    flex: 9,
                    child: Text('80 Delancey Street, NewYork'),
                  ),
                ],
              ),
              iHeightMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: iClock,
                  ),
                  Expanded(
                    flex: 9,
                    child: Text('4 hours per class'),
                  ),
                ],
              ),
              iHeightMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: iPeople,
                  ),
                  Expanded(
                    flex: 9,
                    child: Text('4~6 participants in a class'),
                  ),
                ],
              ),
              iHeightMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: iGraph,
                  ),
                  Expanded(
                    flex: 9,
                    child: Text('Total Participants 999+명'),
                  ),
                ],
              ),
              iHeightMedium,
              Container(
                height: 80,
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                decoration: iBoxDecoration,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Total 16 hours',
                        style: ISetText.body,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '\$ 400',
                            style: ISetText.title,
                          ),
                          Text(
                            '\$ 20 per hour',
                            style: ISetText.textSectionGrey,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          iDivider,
          Text(
            'Sample Video',
            style: ISetText.body.copyWith(fontWeight: FontWeight.bold),
          ),
          iHeightMedium,
          YoutubePlayer(controller: _controller),
          iDivider,
          Text(
            'Photos',
            style: ISetText.body.copyWith(fontWeight: FontWeight.bold),
          ),
          iHeightMedium,
          Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              itemCount: productLists[index].imagesList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Container(
                    decoration: iBoxDecoration,
                    child: ClipRRect(
                      borderRadius: iBorderRadiusRound,
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.asset(
                          productLists[index].imagesList[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          iDivider,
          Text(
            'Who is your tutor?',
            style: ISetText.body.copyWith(fontWeight: FontWeight.bold),
          ),
          iHeightMedium,
          Text(
            dummyTextE,
            style: ISetText.textSectionGrey,
          ),
          iDivider,
          Text(
            'Who is eligible for this class?',
            style: ISetText.body.copyWith(fontWeight: FontWeight.bold),
          ),
          iHeightMedium,
          Text(
            dummyTextE,
            style: ISetText.textSectionGrey,
          ),
          iDivider,
          Text(
            'Class Introduction',
            style: ISetText.body.copyWith(fontWeight: FontWeight.bold),
          ),
          iHeightMedium,
          Text(
            dummyTextE,
            style: ISetText.textSectionGrey,
          ),
          iDivider,
        ],
      ),
    );
  }
}
