import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise_english_app/blocs/theme.dart';
import 'package:provider/provider.dart';

bool isDarkModeEnabled = false;

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
                padding: const EdgeInsets.only(left: 36),
                child: Icon(Icons.language,color: Colors.amberAccent,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 10),
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
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: HomePage(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Music(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Vote(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Feedbacks(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Share(),
          ),
        ],
      ),
    );
  }
}

// change languge in systems
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

// handler dark mode
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return ListTile(
      onTap: () {
        _themeChanger.isDarkModeEnabled
            ? _themeChanger.setThemeData(ThemeData.light())
            : _themeChanger.setThemeData(ThemeData.dark());
      },
      leading: Icon(Icons.nightlight_round,color: Colors.amberAccent,),
      title: Text('Chế độ đêm'),
      subtitle: _themeChanger.isDarkModeEnabled ? Text('Bật') : Text('Tắt'),
    );
  }
}
// set up music in system
class Music extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      leading: Icon(Icons.music_note,color: Colors.amberAccent,),
      title: Text('Âm thanh'),
      subtitle: Text('Bật'),
    );
  }
}
// handler vote app

class Vote extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      leading: Icon(Icons.how_to_vote,color: Colors.amberAccent,),
      title: Text('Đánh giá'),
    );
  }
}
// send feedback to author
class Feedbacks extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return ListTile(
        onTap: (){},
        leading: Icon(Icons.feedback,color: Colors.amberAccent,),
        title: Text('Đánh giá'),
      );
  }
}

class Share extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return ListTile(
     onTap: (){},
     leading: Icon(Icons.share,color: Colors.amberAccent,),
     title: Text('Chia sẻ'),
   );
  }

}
