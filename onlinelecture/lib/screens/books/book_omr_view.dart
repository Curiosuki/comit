import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onlinelecture/theme/i_set_color.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BookOMRView extends StatefulWidget {
  BookOMRView({Key key}) : super(key: key);

  @override
  _BookOMRViewState createState() => new _BookOMRViewState();
}

class _BookOMRViewState extends State<BookOMRView>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'TD_hAqaUudo',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    List<Widget> _silverBuilder(BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        new SliverAppBar(
          backgroundColor: mainColor,
          elevation: 0,
          expandedHeight: 300.0,
          pinned: true,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            background: new Container(
              child: Image.network('https://cdn.atom.ac/thumb/298x422/M4BU5H3wuS3Fkz1QsbL9PuwCt2sPBFtyFNSArY56.jpg', fit: BoxFit.cover,),
            ),
          ),
        ),
         SliverPersistentHeader(
          pinned: true,
          floating: true,
          delegate: _SilverAppBarDelegate(TabBar(
            labelColor: mainColor,
            indicatorColor: mainColor,
            controller: _tabController,
            tabs: <Widget>[
              new Tab(
                text: "개념강의",
              ),
              new Tab(
                text: "문제OMR",
              ),
            ],
          )),
        ),
      ];
    }

    return new Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, '/book_ox_lecture'),
        backgroundColor: mainColor,
        icon: Icon(Icons.send),
        label: Text('OMR 제출하기'),
      ),
      body: NestedScrollView(
        headerSliverBuilder: _silverBuilder,
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            ExpansionTile(
              leading: Text('1'),
              title: Text('Ch 1. 함수와 미적분'),
              children: [
                YoutubePlayer(
                  controller: _controller,
                  liveUIColor: Colors.amber,
                ),

              ],
            ),
            ExpansionTile(
              leading: Text('1'),
              title: Text('Ch 1. 함수와 미적분'),
              children: [
                Column(
                  children: [
                    ListTile(
                      leading: Text('10p\n1번'),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '1',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '2',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '3',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '4',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '5',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 1.0,
                              color: Colors.redAccent,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          )
                        ],
                      ),
                    ),
//                      Container(
//                        padding: EdgeInsets.symmetric(horizontal: 8),
//                        width: double.infinity,
//                        height: 150,
//                          child: Image.network(
//                        'https://www.dhnews.co.kr/news/photo/201111/11339_7557_5131.jpg',
//                        fit: BoxFit.cover,
//                      )),
                  ],
                ),
                Column(
                  children: [
                    ListTile(
                      leading: Text('10p\n1번'),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '1',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '2',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '3',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '4',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '5',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 1.0,
                              color: Colors.redAccent,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          )
                        ],
                      ),
                    ),
//                      Container(
//                        padding: EdgeInsets.symmetric(horizontal: 8),
//                        width: double.infinity,
//                        height: 150,
//                          child: Image.network(
//                        'https://www.dhnews.co.kr/news/photo/201111/11339_7557_5131.jpg',
//                        fit: BoxFit.cover,
//                      )),
                  ],
                ),
                Column(
                  children: [
                    ListTile(
                      leading: Text('10p\n1번'),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '1',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '2',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '3',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '4',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '5',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 1.0,
                              color: Colors.redAccent,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ListTile(
                      leading: Text('10p\n1번'),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '1',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '2',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '3',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '4',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              color: black_200,
                              child: Text(
                                '5',
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 1.0,
                              color: Colors.redAccent,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          )
                        ],
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

class _SilverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SilverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
