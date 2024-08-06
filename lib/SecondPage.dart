import 'package:day_7/Building.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key, required this.building});

  Building building;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(building.imgUrl),
            Text(building.name),
            Text(building.desc),
          ],
        ),
      ),
    );
  }
}
