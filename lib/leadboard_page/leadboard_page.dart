import 'dart:math';

import 'package:crickfire/home/batting.dart';
import 'package:crickfire/home/bowling.dart';
import 'package:crickfire/home/teaming.dart';
import 'package:crickfire/leadboard_page/bat_session.dart';
import 'package:crickfire/leadboard_page/bowl_session.dart';
import 'package:crickfire/leadboard_page/team_session.dart';
import 'package:crickfire/universal/dev_scaffold.dart';
import 'package:crickfire/utility/tools.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AgendaPage extends StatelessWidget {
  static const String routeName = "/agenda";
  //var list;
  // var random;
  @override
  //void initState(){
  // super.initState();
  // random = Random();
  // list = List.generate(random.nextInt(10),(i) => )

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: DevScaffold(
        title: "ODI Statistics",
        tabBar: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Tools.multiColors[Random().nextInt(4)],
          isScrollable: false,
          labelStyle: TextStyle(fontSize: 12),
          tabs: <Widget>[
            Tab(
              child: Text("Top Batsman"),
              icon: Icon(
                FontAwesomeIcons.arrowDown,
                size: 12,
              ),
            ),
            Tab(
              child: Text("Top Bowler"),
              icon: Icon(
                FontAwesomeIcons.arrowDown,
                size: 12,
              ),
            ),
            Tab(
              child: Text("Team Ranks"),
              icon: Icon(
                FontAwesomeIcons.arrowDown,
                size: 12,
              ),
            )
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            SessionList(
              allSessions: sessions,
            ),
            Container(
              child: SessionList2(
                bowlerSession: sessionBow,
              ),
            ),
            Container(
              child: SessionList3(
                allTeams: sessionallteams,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
