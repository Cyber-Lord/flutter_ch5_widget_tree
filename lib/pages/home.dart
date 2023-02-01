import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[_buildHorizontalRow(), _buildRowAndColumn()],
            ),
          ),
        ),
      ),
    );
  }

  Row _buildRowAndColumn() {
    return Row(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              height: 60.0,
              width: 60.0,
              color: Colors.yellow,
            ),
            Padding(padding: EdgeInsets.all(16.0)),
            Container(
              color: Colors.amber,
              height: 40.0,
              width: 40.0,
            ),
            Padding(padding: EdgeInsets.all(16.0)),
            Container(
              height: 20.0,
              width: 20.0,
              color: Colors.brown,
            ),
            Divider(),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.lightGreen,
                  radius: 100.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: 100.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 60.0,
                        width: 60.0,
                        color: Colors.amber,
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        color: Colors.brown,
                      ),
                    ],
                  ),
                ),
                Text("End of Line"),
                Divider(),
              ],
            ),
            Divider(),
            Text("End of Line")
          ],
        ),
      ],
    );
  }

  Row _buildHorizontalRow() {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.red,
          height: 40.0,
          width: 40.0,
        ),
        Padding(padding: EdgeInsets.all(16.0)),
        Expanded(
          child: Container(
            color: Colors.amber,
            height: 40.0,
            width: 40.0,
          ),
        ),
        Padding(padding: EdgeInsets.all(16.0)),
        Container(
          color: Colors.brown,
          height: 40.0,
          width: 40.0,
        ),
        Padding(padding: EdgeInsets.all(16.0))
      ],
    );
  }
}
