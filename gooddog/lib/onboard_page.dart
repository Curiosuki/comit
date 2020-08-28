
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gooddog/theme/i_set_boxdecoration.dart';
import 'package:gooddog/theme/i_set_color.dart';
import 'package:gooddog/theme/i_set_string.dart';
import 'package:gooddog/theme/i_set_text.dart';

import 'components/main_button.dart';


class OnBoardPage extends StatefulWidget {
  @override
  _OnBoardPageState createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? mainColor : black_500,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          color: backgroundColor,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: mainColor,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 500,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              decoration: iBoxDecoration,
                              child: ClipRRect(
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/onboarding_1.jpg',
                                  ),
                                  height: MediaQuery.of(context).size.height/3,
                                  width: double.infinity,
                                ),
                                borderRadius: iBorderRadiusRound,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              onBoardText1,
                              style: ISetText.headline,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              onBoardText2,
                              style: ISetText.body
                                  .copyWith(color: black_500),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              decoration: iBoxDecoration,
                              child: ClipRRect(
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/onboarding_2.jpg',
                                  ),
                                  height: 300.0,
                                  width: double.infinity,
                                ),
                                borderRadius: iBorderRadiusRound,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              onBoardText3,
                              style: ISetText.headline,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              onBoardText4,
                              style: ISetText.body
                                  .copyWith(color: black_500),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              decoration: iBoxDecoration,
                              child: ClipRRect(
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/onboarding_3.jpg',
                                  ),
                                  height: 300.0,
                                  width: double.infinity,
                                ),
                                borderRadius: iBorderRadiusRound,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              onBoardText5,
                              style: ISetText.headline,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              onBoardText6,
                              style: ISetText.body
                                  .copyWith(color: black_500),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    color: mainColor,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              color: backgroundColor,
              padding: const EdgeInsets.all(8.0),
              child: MainButton(
                height: 80.0,
                child: Text(
                  "시작하기",
                  style: ISetText.title,
                ),
                pressedButton: () => Navigator.pushNamed(context, '/homepage'),
              ),
            )
          : Text(''),
    );
  }
}

