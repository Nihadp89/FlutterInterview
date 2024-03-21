import 'package:flutter_task_1/ApiCallingFirst.dart';
import 'package:flutter_task_1/GridviewCalling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_1/main.dart';

class ApiShow extends State<StateRoute> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirstApi.ApiCallingFirst();
  }

  @override
  Widget build(BuildContext context) {
    FirstApi.ApiCallingFirst();
    return Scaffold(
        body: FutureBuilder(
            future: FirstApi.ApiCallingFirst(),
            builder: (BuildContext context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else {
                return GridViewCards.callingCardsGridView();
              }
            }));
  }
}
