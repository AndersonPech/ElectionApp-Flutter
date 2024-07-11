import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: const _HomePage()
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          width: double.infinity,
          child: const Center(child: Text("Date: 09/09/2024", style: TextStyle(color: Colors.black))),
        ),
        Expanded (
          child: Container(
            //color: Colors.blueAccent,
            color: Colors.blue[700],
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(child: Text("Biden", style: TextStyle(fontSize: 30, color: Colors.white))),
                Text("50",
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white
                ),)
              ],
            ),
          )
        ),
        Expanded( 
          child: Container(
            //color: Colors.blueAccent,
            color: Colors.red[700],
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(child: Text("Trump", style: TextStyle(fontSize: 30, color: Colors.white))),
                Text("50",
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white
                ),)
              ],
            ),
          )
        )
      ],
    );
  }
}