import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  Material myItems(IconData icon, String heading, int color) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        padding: EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 8.0,
        ),
        children: [
          myItems(Icons.graphic_eq, 'Mexerica', 0xffed622b),
          myItems(Icons.access_alarm_outlined, 'Maça', 0xff26cb3c),
          myItems(Icons.graphic_eq, 'Laranja', 0xffff3266),
          myItems(Icons.graphic_eq, 'Pera', 0xff3399fe),
          myItems(Icons.graphic_eq, 'Uva', 0xffed722b),
          myItems(Icons.graphic_eq, 'Jaca', 0xffed722b),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 330.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
        ],
      ),
    );
  }
}
