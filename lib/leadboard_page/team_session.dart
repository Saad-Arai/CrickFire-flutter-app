
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:crickfire/home/teaming.dart';
import 'package:crickfire/utility/tools.dart';
import 'package:flutter/material.dart';

class SessionList3 extends StatelessWidget {
  final List<TeamSession> allTeams;

  const SessionList3({Key key, this.allTeams, List<TeamSession> bowSession}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: false,
      itemCount: allTeams.length,
      itemBuilder: (c, i) {
        return Card(
          elevation: 0.0,
          child: ListTile(
            isThreeLine: true,
            trailing: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "${allTeams[i].sessionTotalTime}\n",
                style: Theme.of(context)
                    .textTheme
                    .title
                    //ranking data
                    .copyWith(fontSize: 14),
                children: [
                  TextSpan(
                    text: allTeams[i].sessionStartTime,
                    style: Theme.of(context).textTheme.subtitle.copyWith(
                          fontSize: 13,fontWeight: FontWeight.bold
                        ),
                  ),
                ],
              ),
            ),
            leading: Hero(
              tag: allTeams[i].speakerImage,
              child: CircleAvatar(
                radius: 30,
                backgroundImage:
                    CachedNetworkImageProvider(allTeams[i].speakerImage),
              ),
            ),
            title: RichText(
              text: TextSpan(
                text: "${allTeams[i].sessionTitle}\n",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 18,
                
                ),
                children: [
                  TextSpan(
                      text: allTeams[i].speakerName,
                      style: Theme.of(context).textTheme.subtitle.copyWith(
                            fontSize: 15,
                            color: Tools.multiColors[Random().nextInt(4)]
                          ),
                      children: []),
                ],
              ),
            ),
            subtitle: Text(
              allTeams[i].speakerDesc,
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 10.0,
                  ),
            ),
          ),
        );
      },
    );
  }
}