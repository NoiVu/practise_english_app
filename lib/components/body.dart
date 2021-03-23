import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class getBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/bg_pencil.jpg'),
        Column(
          children: <Widget>[
            ListItem(
              title: 'Trắc nghiệm',
              icon: Icons.alarm_outlined,
              circularPercentIndicator: CircularPercentIndicator(
                radius: 23.0,
                lineWidth: 2.0,
                percent: 1.0,
                progressColor: Colors.grey.shade300,
              ),
              onTap: () {
                print('tap trac nghiem');
              },
            ),
            ListItem(
              title: 'Trắc nghiệm',
              icon: Icons.alarm_outlined,
              circularPercentIndicator: CircularPercentIndicator(
                radius: 23.0,
                lineWidth: 2.0,
                percent: 1.0,
                progressColor: Colors.white,
              ),
              onTap: () {
                print('tap trac nghiem');
              },
            ),
            ListItem(
              title: 'Chủ đề',
              icon: Icons.folder,
              circularPercentIndicator: CircularPercentIndicator(
                radius: 23.0,
                lineWidth: 2.0,
                percent: 1.0,
                progressColor: Colors.white,
              ),
              onTap: () {
                print('tap chu de');
              },
            ),
            ListItem(
              title: 'Bài kiểm tra',
              icon: Icons.create,
              circularPercentIndicator: CircularPercentIndicator(
                radius: 23.0,
                lineWidth: 2.0,
                percent: 1.0,
                progressColor: Colors.white,
              ),
              onTap: () {
                print('tap bai kiem tra');
              },
            ),
          ],
        ),
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  final String title;
  final CircleAvatar circleAvatar;
  final Widget circularPercentIndicator;

  const ListItem({
    @required this.onTap,
    @required this.icon,
    @required this.title,
    @required this.circleAvatar,
    @required this.circularPercentIndicator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: Card(
        child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 1,
                  child: CircleAvatar(
                      backgroundColor: Colors.orange.shade300,
                      radius: 16,
                      child: Icon(
                        icon,
                        size: 20.0,
                        color: Colors.white,
                      ))),
              Expanded(flex: 4, child: Text(title)),
              Expanded(flex: 1, child: circularPercentIndicator),
            ],
          ),
        ),
      ),
    );
  }
}
