import 'package:curso_flutter/compontent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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
          myItems(Icons.accessibility_new_sharp, 'Laranja', 0xffff3266),
          myItems(Icons.app_settings_alt_sharp, 'Pera', 0xff3399fe),
          myItems(Icons.accessible_forward_outlined, 'Uva', 0xffed722b),
          myItems(Icons.account_balance_wallet_sharp, 'Jaca', 0xffed722b),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 190.0),
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
