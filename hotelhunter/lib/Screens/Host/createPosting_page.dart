import 'package:flutter/material.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Themes/i_set_textstyle.dart';
import 'package:hotelhunter/Widgets/i_Form_Box.dart';
import 'package:hotelhunter/Widgets/i_Button_Flat.dart';

class CreatePostingPage extends StatelessWidget {
  String _houseType;
  List<String> _houseTypes = [
    'Detached House',
    'Apartment',
    'Condo',
    'Townhouse'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('방 등록하기'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: ListView(
            children: [
              iHeight32,
              Text(
                'Basic Information',
                style: ITextStyle.title,
              ),
              iDivider,
              IFormBox(
                hintText: 'Posting name',
              ),
              iHeight16,
              DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: iBorderRadius,
                      borderSide: BorderSide(color: black_500)),
                ),
                hint: Text(
                  'Select a house type',
                  style: ITextStyle.body,
                ),
                //isExpanded: true,
                value: _houseType,
                onChanged: (value) {},
                items: _houseTypes
                    .map((type) => DropdownMenuItem(
                          value: type,
                          child: Text(type),
                        ))
                    .toList(),
              ),
              iHeight16,
              Row(
                children: [
                  Flexible(
                    child: IFormBox(
                      keyboardType: TextInputType.number,
                      hintText: '가격',
                    ),
                  ),
                  iWidth8,
                  Text('원 / 시간')
                ],
              ),
              iHeight16,
              IFormBox(
                minLines: 5,
                hintText: '설명',
              ),
              iHeight16,
              IFormBox(
                hintText: '도시',
              ),
              iHeight16,
              IFormBox(
                hintText: '국가',
              ),
              iDivider,
              iHeight32,
              Text(
                '침대',
                style: ITextStyle.title,
              ),
              iDivider,
              Column(
                children: [
                  FacilitiesWidget(
                    type: 'Twin/Single',
                    starValue: 0,
                  ),
                  FacilitiesWidget(
                    type: 'Double',
                    starValue: 0,
                  ),
                  FacilitiesWidget(
                    type: 'Queen/King',
                    starValue: 0,
                  ),
                ],
              ),
              iDivider,
              iHeight16,
              Text(
                '샤워실',
                style: ITextStyle.title,
              ),
              iDivider,
              Column(
                children: [
                  FacilitiesWidget(
                    type: 'Half',
                    starValue: 0,
                  ),
                  FacilitiesWidget(
                    type: 'Full',
                    starValue: 0,
                  ),
                ],
              ),
              iDivider,
              iHeight32,
              Text(
                '이미지',
                style: ITextStyle.title,
              ),
              iDivider,
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 25,
                      childAspectRatio: 3 / 2),
                  itemBuilder: (context, index){
                    if(index == 1){
                      return IconButton(
                        icon: Icon(Icons.add),
                        onPressed: (){},
                      );
                    }
                    return MaterialButton(
                      onPressed: (){},
                      child: Image(
                        image: AssetImage('assets/images/apt1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
              iDivider,
            ],
          ),
        ),
      ),
    );
  }
}

class FacilitiesWidget extends StatefulWidget {
  final String type;
  final int starValue;

  FacilitiesWidget({this.type, this.starValue});

  @override
  _FacilitiesWidgetState createState() => _FacilitiesWidgetState();
}

class _FacilitiesWidgetState extends State<FacilitiesWidget> {
  int _value;

  @override
  void initState() {
    this._value = widget.starValue;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(widget.type, style: ITextStyle.bodyblack,),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove),
              ),
              iWidth32,
              Text(this._value.toString(), style: ITextStyle.bodyblack,),
              iWidth32,
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ],
          ),
        )
      ],
    );
  }
}
