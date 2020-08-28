import 'package:flutter/material.dart';
import 'package:onlinelecture/theme/i_set_color.dart';
import 'package:onlinelecture/theme/i_set_size.dart';
import 'package:onlinelecture/theme/i_set_string.dart';
import 'package:onlinelecture/theme/i_set_text.dart';

class BookLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: mainColor,
            //title: Text(brand_name),
            title: Text(brand_name),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25.0))
                ),
                child: TextField(
                  cursorColor: mainColor,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: mainColor,),
                    border: InputBorder.none,
                    hintText: '현재 본인이 학습 중인 교재를 검색해주세요',
                    hintStyle: TextStyle(color: mainColor),
                  ),
                ),
              ),
            ),
          ),
          body: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  onPressed: () => Navigator.pushNamed(context, '/book_omr_view'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                            height: 150,
                            width: 120,
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            child: Image.network(
                              'https://cdn.atom.ac/thumb/298x422/M4BU5H3wuS3Fkz1QsbL9PuwCt2sPBFtyFNSArY56.jpg',
                              fit: BoxFit.fitHeight,
                            )),
                      ),
                      Expanded(
                          flex: 4,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '이동훈 기출문제집 2021',
                                  style: ISetText.subTitle,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                iHeightMedium,
                                Text(
                                  '전체문항: 2021개',
                                  style: ISetText.bodyblack,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                iHeightMedium,
                                Text(
                                  '강사: 정성우',
                                  style: ISetText.textSectionBlack,
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 80,
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.playlist_add_check,
                                size: 40,
                              ),
                              Text('OMR'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
