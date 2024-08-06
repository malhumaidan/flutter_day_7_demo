import 'package:day_7/Building.dart';
import 'package:day_7/SecondPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Home Page"),
      ),
      body: ListView.builder(
          itemCount: buildings.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.amber,
                leading: Image.network(buildings[index].imgUrl),
                title: Text(buildings[index].name),
                trailing: InkWell(
                  child: Icon(Icons.forward),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailPage(
                        building: buildings[index],
                      );
                    }));
                  },
                ),
              ),
            );
          }),
    );
  }
}
