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
            SizedBox(
              height: 50.0,
              child: Card(
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 1,
                          child: CircleAvatar(
                              backgroundColor: Colors.orange.shade300,
                              radius: 16,
                              child: Icon(
                                Icons.list_alt_outlined,
                                size: 20.0,
                                color: Colors.white,
                              ))),
                      Expanded(flex: 4, child: Text('Lộ trình')),
                      Expanded(
                          flex: 1,
                          child: CircularPercentIndicator(
                              radius: 20.0,
                              lineWidth: 2.4,
                              percent: 1.0,
                              progressColor: Colors.grey.shade300)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
              child: Card(
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 1,
                          child: CircleAvatar(
                              backgroundColor: Colors.orange.shade300,
                              radius: 16,
                              child: Icon(
                                Icons.alarm_outlined,
                                size: 20.0,
                                color: Colors.white,
                              ))),
                      Expanded(flex: 4, child: Text('Trắc nghiệm nhanh')),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.local_fire_department_outlined,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
              child: Card(
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 1,
                          child: CircleAvatar(
                              backgroundColor: Colors.orange.shade300,
                              radius: 16,
                              child: Icon(
                                Icons.alarm_outlined,
                                size: 20.0,
                                color: Colors.white,
                              ))),
                      Expanded(flex: 4, child: Text('Chủ đê')),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.bookmark,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
              child: Card(
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 1,
                          child: CircleAvatar(
                              backgroundColor: Colors.orange.shade300,
                              radius: 16,
                              child: Icon(
                                Icons.create,
                                size: 20.0,
                                color: Colors.white,
                              ))),
                      Expanded(flex: 4, child: Text('Lộ trình')),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.timeline,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
