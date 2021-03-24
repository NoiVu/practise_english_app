import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise_english_app/blocs/theme.dart';
import 'package:provider/provider.dart';

class SetUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cài đặt'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Icon(Icons.language),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Column(
                  children: [
                    Text(
                      'Ngôn ngữ',
                      style: TextStyle(fontSize: 15),
                    ),
                    ChangLanguage(),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Icon(Icons.nightlight_round),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Column(
                  children: [
                    Text(
                      'Chế độ ban đêm',
                      style: TextStyle(fontSize: 15),
                    ),
                    HomePage(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChangLanguage extends StatefulWidget {
  @override
  _ChangLanguageState createState() => _ChangLanguageState();
}

class _ChangLanguageState extends State<ChangLanguage> {
  String dropDownValue = 'Tiếng Việt';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropDownValue,
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 20,
      elevation: 15,
      // underline: Container(
      //   height: 2,
      //   color: Colors.grey.shade300,
      // ),
      onChanged: (String newValue) {
        setState(() {
          dropDownValue = newValue;
        });
      },
      items: <String>['Tiếng Việt', 'Tiếng Anh']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(
            value,
            style: TextStyle(fontSize: 12),
          ),
        );
      }).toList(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return Container(
          child: Column(
            children: [
              FlatButton(
                  onPressed: () => _themeChanger.setThemeData(ThemeData.dark()),
                  child: Text('Dark')),
              FlatButton(
                  onPressed: () => _themeChanger.setThemeData(ThemeData.light()),
                  child: Text('Light'))
            ],
          ),
        );
  }
}
