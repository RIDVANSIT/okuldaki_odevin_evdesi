import 'package:flutter/material.dart';
import 'package:okuldaki_odevin_evdesi/view_model/homepage_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 35, 41),
     
      body: Consumer<HomepageView>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.character.length,
            itemBuilder: (context, index) {
              String status = value.character[index].status;
              Color mycolor = (status == "Dead") ? Colors.red : Colors.green;
              return Card(
                  color: Color.fromARGB(243, 44, 42, 42),
                  // ignore: sort_child_properties_last
                  child: Row( mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          value.character[index].image,
                          width: 150,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              value.character[index].name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: mycolor,
                                  size: 20,
                                ),
                                Text(value.character[index].status + " - ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 16)),
                                Text(value.character[index].species,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 16))
                              ],
                            ),
                            Text("last known location :",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 158, 158, 158),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16)),
                            Text(value.character[index].location,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16)),
                            Text("first seen in :",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 158, 158, 158),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16)),
                            Text(value.character[index].origin,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16))
                          ],
                        ),
                      )
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ));
            },
          );
        },
      ),
    );
  }
}
