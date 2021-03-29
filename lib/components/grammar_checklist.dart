import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GrammarChecklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lộ trình'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10),
                    child: CircularPercentIndicator(
                      radius: 60,
                      lineWidth: 5.0,
                      percent: 1.0,
                      center: new Text('0%'),
                      progressColor: Colors.grey.shade200,
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 9.0),
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(

                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Điểm trung bình: ',
                                  style: TextStyle(fontSize: 15,color: Colors.black)),
                              TextSpan(
                                text: '0',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Xếp hạng: ',
                                  style: TextStyle(fontSize: 15,color: Colors.black)),
                              TextSpan(
                                text: 'F',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(delegate: new SliverChildListDelegate(_buildList(50))),
        ],
      ),
    );
  }
}

List _buildList(int count) {
  List<Widget> listItems = List();

  for (int i = 0; i < count; i++) {
    listItems.add(Card(
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Practice...'),
              subtitle: Text('Status Pending'),
            )
          ],
        ),
      ),
    ));
  }

  return listItems;
}
