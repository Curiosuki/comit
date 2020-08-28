import 'package:flutter/material.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Themes/i_set_textstyle.dart';

class IListTilePosting extends StatefulWidget {
  @override
  _IListTilePostingState createState() => _IListTilePostingState();
}

class _IListTilePostingState extends State<IListTilePosting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: iBorderRadius, border: Border.all(color: black_300)),
      child: ListTile(
        title: Text(
          'Awesome Apt',
          style: ITextStyle.bodyblack,
        ),
        leading: ClipRRect(
          borderRadius: iBorderRadius,
          child: Image(
            image: AssetImage('assets/images/apt1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        contentPadding: iPaddingAll4,
      ),
    );
  }
}

class IListTileCreatePosting extends StatefulWidget {
  @override
  _IListTileCreatePostingState createState() => _IListTileCreatePostingState();
}

class _IListTileCreatePostingState extends State<IListTileCreatePosting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: iBorderRadius, border: Border.all(color: black_300)),
      child: ListTile(
        onTap: () => Navigator.pushNamed(context, '/createPostingPage'),
        trailing: Icon(Icons.add),
        title: Text(
          'Create a posting',
          style: ITextStyle.bodyblack,
        ),
      ),
    );
  }
}
