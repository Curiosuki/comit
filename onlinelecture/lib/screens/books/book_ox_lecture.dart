import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinelecture/theme/i_set_color.dart';
import 'package:onlinelecture/theme/i_set_size.dart';
import 'package:onlinelecture/theme/i_set_text.dart';

class BookOXLecture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 300,
            flexibleSpace: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: double.infinity,
                  child: Image.network(
                    'https://cdn.atom.ac/thumb/298x422/M4BU5H3wuS3Fkz1QsbL9PuwCt2sPBFtyFNSArY56.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  height: 50,
                  color: Colors.redAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '제출한 문항수: 10개  |  ',
                        style: ISetText.bodyWhite,
                      ),
                      Text(
                        '틀린문항: 5개  |  ',
                        style: ISetText.bodyWhite,
                      ),
                      Text(
                        '  정답율: 50%',
                        style: ISetText.bodyWhite,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0.0),
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                                width: 120,
                                height: 100,
                                child: Image.network(
                                  'https://mir-s3-cdn-cf.behance.net/project_modules/1400/5ce32583504683.5d3ee5d2adea1.png',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Flexible(
                              child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0 ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '이동훈 기출문제집 2021',
                                  style: ISetText.subTitle,
                                ),
                                iHeightMedium,
                                Text(
                                  'CH. 함수와 미적분',
                                  style: ISetText.bodyblack,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  '10p. 1번 문항',
                                  style: ISetText.bodyblack,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                iHeightMedium,
                                Text(
                                  '강사: 정성우',
                                  style: ISetText.textSection,
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  iThinDivider
                ],
              ),
              childCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}
