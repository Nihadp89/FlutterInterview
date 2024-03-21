import 'package:flutter/material.dart';
import 'package:flutter_task_1/SecondPage.dart';
import 'ApiCallingFirst.dart';

class GridViewCards {
  static late int ClickIndexCard;
  static Widget callingCardsGridView() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemCount: FirstApi.ShareApiData.length,
      itemBuilder: (context, index) {
        return Card(
            child: ListTile(
          title: Image.network(
            FirstApi.ShareApiData[index]['image']['original'].toString(),
            fit: BoxFit.cover,
          ),
          subtitle: Text(FirstApi.ShareApiData[index]['name']),
          onTap: () {
            ClickIndexCard = index;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
        ));
      },
    );
  }
}
