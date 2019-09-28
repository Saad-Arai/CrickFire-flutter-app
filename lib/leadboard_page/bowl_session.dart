import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:crickfire/home/bowling.dart';
import 'package:crickfire/utility/tools.dart';

import 'package:flutter/material.dart';

class SessionList2 extends StatelessWidget {
  final List<bowSession> bowlerSession;

  const SessionList2({Key key, this.bowlerSession, List<bowSession> bowSession}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: false,
      itemCount: bowlerSession.length,
      itemBuilder: (c, i) {
        return Card(
          elevation: 0.0,
          child: ListTile(
            isThreeLine: true,
            trailing: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "${bowlerSession[i].sessionTotalTime}\n",
                style: Theme.of(context)
                    .textTheme
                    .title
                    //ranking data
                    .copyWith(fontSize: 14),
                children: [
                  TextSpan(
                    text: bowlerSession[i].sessionStartTime,
                    style: Theme.of(context).textTheme.subtitle.copyWith(
                          fontSize: 13,fontWeight: FontWeight.bold
                        ),
                  ),
                ],
              ),
            ),
            leading: Hero(
              tag: bowlerSession[i].speakerImage,
              child: CircleAvatar(
                radius: 30,
                backgroundImage:
                    CachedNetworkImageProvider(bowlerSession[i].speakerImage),
              ),
            ),
            title: RichText(
              text: TextSpan(
                text: "${bowlerSession[i].sessionTitle}\n",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 18,
                
                ),
                children: [
                  TextSpan(
                      text: bowlerSession[i].speakerName,
                      style: Theme.of(context).textTheme.subtitle.copyWith(
                            fontSize: 15,
                            color: Tools.multiColors[Random().nextInt(4)]
                          ),
                      children: []),
                ],
              ),
            ),
            subtitle: Text(
              bowlerSession[i].speakerDesc,
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