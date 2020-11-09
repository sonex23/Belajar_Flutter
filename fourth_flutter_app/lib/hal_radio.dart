import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
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
              "Radio",
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Image(
              image: NetworkImage(
                  "https://freepngimg.com/thumb/radio/3-2-radio-picture-thumb.png"),
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
