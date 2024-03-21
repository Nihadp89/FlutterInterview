import 'package:flutter_task_1/ApiCallingSecond.dart';
import 'package:flutter/material.dart';
import 'GridviewCalling.dart';

class SecondPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: SecondApiCalling.apiCallingSecond(),
            builder: (BuildContext context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else {
                return Center(
                    child: GridViewCards.ClickIndexCard < 14
                        ? Text(
                            'Name is ${SecondApiCalling.ApiDataSecond[GridViewCards.ClickIndexCard]['person']['name']}')
                        : Text('No Data'));
              }
            }));
  }
}
