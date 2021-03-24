import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:practise_english_app/components/set_up.dart';

class getBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/bg_pencil.jpg'),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                                  Icons.folder,
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
          flex: 6,
        ),
        Expanded(
          child: Center(
            child: Column(
              children: [
                Divider(height: 20, thickness: 2, indent: 20, endIndent: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Practise English Grammar v1.1.4'),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SetUp(),
                            ),
                          );
                        },
                        child: Icon(Icons.settings,color: Colors.amber,),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          flex: 1,
        ),
      ],
    );
  }
}
