import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String s;
  final Function function;
  Button(this.s, this.function);

//width = 740 - 16 = 624/4 = 131
  @override
  Widget build(BuildContext context) {
    double breadth = (MediaQuery.of(context).size.width - 45) / 4;
    return Center(
      child: Container(
        width: s == '=' ? breadth * 2 + 9 : breadth,
        height: 40,
        margin: EdgeInsets.fromLTRB(9, 9, 0, 0),
        child: RaisedButton(
          onPressed: () {
            function(s);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 4.0,
          child: Text(s,
            style: TextStyle(
              color:Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w800
            ),
          ),
          color: s == '='  || s == 'AC' ? Colors.redAccent[400] : Colors.grey[850],
        ),
      ),
    );
  }
}
