import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Text(
              "Headset",
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Image(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/d7/a5/3a/d7a53a450f76f01840facc033bb0627f.png"),
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
