import 'package:comit/components/button/press_function.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_policy.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';

class Policy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'Comit Policies',
                style: ISetText.title,
              ),
              iHeightLarge,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: pressButton(
                        Container(
                          height: 40,
                          child: Center(
                            child: Text(
                              'User Policy',
                              style: ISetText.body,
                            ),
                          ),
                        ),
                        selected: true),
                  ),
                  iWidthMedium,
                  Expanded(
                    child: pressButton(
                      Container(
                        height: 40,
                        child: Center(
                          child: Text(
                            'Privacy Policy',
                            style: ISetText.body,
                          ),
                        ),
                      ),
                    ),
                  ),
                  iWidthMedium,
                  Expanded(
                    child: pressButton(
                      Container(
                        height: 40,
                        child: Center(
                          child: Text(
                            'Refund Policy',
                            style: ISetText.body,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            user_policyE,
            style: ISetText.textSectionGrey,
          ),
        ),
      ),
    );
  }
}
