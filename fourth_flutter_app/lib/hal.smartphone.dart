import 'package:flutter/material.dart';

class Smarthphone extends StatelessWidget {
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
              "Smarthphone",
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Image(
              image: NetworkImage(
                  "https://image.freepik.com/free-vector/realistic-phone-isolated-white-background-smartphone-template-your-mockup_7993-6350.jpg"),
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
