import 'package:flutter/material.dart';

Material myItems(
  IconData icon,
  String heading,
  int color,
) {
  return Material(
    color: Colors.white,
    elevation: 14.0,
    shadowColor: Color(0x802196F3),
    borderRadius: BorderRadius.circular(24.0),
    child: Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  heading,
                  style: TextStyle(
                    color: Color(color),
                    fontSize: 20,
                  ),
                ),
              ),
              Material(
                color: Color(color),
                borderRadius: BorderRadius.circular(24),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
