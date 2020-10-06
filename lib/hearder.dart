import 'package:flutter/material.dart';

Material myHeader(
  IconData icon,
  String heading,
  int color, {
  String subtitle,
}) {
  return Material(
    color: Colors.yellow[100],
    elevation: 14.0,
    shadowColor: Color(0x802196F3),
    borderRadius: BorderRadius.circular(24.0),
    child: Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: ListTile(
              leading: Material(
                color: Color(color),
                borderRadius: BorderRadius.circular(50),
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Icon(
                    icon,
                    size: 50,
                  ),
                ),
              ),
              title: Text(heading),
              subtitle: Text(subtitle),
            ),
          )
        ],
      ),
    ),
  );
}
