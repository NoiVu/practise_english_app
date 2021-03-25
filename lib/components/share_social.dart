
import 'package:flutter/material.dart';
import 'package:flutter_share_me/flutter_share_me.dart';

class ShareSocial extends StatefulWidget {
  @override
  _ShareSocialState createState() => _ShareSocialState();
}

class _ShareSocialState extends State<ShareSocial> {
  String msg = 'https://apps.apple.com/app/id1542431728?fbclid=IwAR0IFxlj5gkEw_6N0fxlq8uErhLhSXuqw4KgblWaCpQTImrw_LYfOXfTnnU';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text('share to System'),
        onPressed: () async {
          var response = await FlutterShareMe().shareToSystem(msg: msg);
          if (response == 'success') {
            print('navigate success');
          }
        },
      ),
    );
  }
}
