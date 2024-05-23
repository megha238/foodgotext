import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class HeartScreen extends StatefulWidget {
  const HeartScreen({super.key});

  @override
  State<HeartScreen> createState() => _HeartScreenState();
}

class _HeartScreenState extends State<HeartScreen> {
  List dateList = ['10/01/2024','10/07/2023','10/03/2023','10/02/2022','10/01/2022','10/02/2021'];
  List heading = ['Status change','Improvement works','Revenue updated','Ownership change','Ownership change','Status change'];
  List subHeading = ['Property is now for sale','Roof has been replaced','Over the last 12 months short term rental generated','Property has been sold','Over the last 12 months short term rental generated','Property is now for sale'];
List priceaHeading = ['Price: 700 000 €','Budget: 15 000 €','20 000 € revenues','Price: unknown','15 000 € revenues','Price: 620 000 €'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('heart screen')),
      body: SingleChildScrollView(
        child: FixedTimeline.tileBuilder(
          theme: TimelineThemeData(

            color: Colors.grey,
                indicatorTheme: IndicatorThemeData(color: Colors.green,size: 15),
connectorTheme: ConnectorThemeData(thickness: 5,space: 10,)
          ),

          builder: TimelineTileBuilder.connectedFromStyle(

            contentsAlign: ContentsAlign.alternating,
            oppositeContentsBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child:Text('${ dateList[index]}'),
            ),
            contentsBuilder: (context, index) => Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Text('${heading[index]}'),
                      Text('${subHeading[index]}'),
                      Text('${priceaHeading[index]}'),
                    ],
                  ),
                ),
              ),
            ),
            connectorStyleBuilder:  (context, index) => ConnectorStyle.solidLine,
            indicatorStyleBuilder: (context, index) => IndicatorStyle.outlined,

            itemCount: dateList.length,
          ),
        ),
      )

    );
  }
}
