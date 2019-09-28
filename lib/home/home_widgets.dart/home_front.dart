
import 'package:crickfire/config/index.dart';
import 'package:crickfire/leadboard_page/leadboard_page.dart';
import 'package:crickfire/talkspage/talks.dart';
import 'package:crickfire/universal/image_card.dart';
import 'package:crickfire/utility/cricapp.dart';
import 'package:crickfire/utility/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFront extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<Widget> devFestTexts(context) => [
        Text(
          Crikfire.welcomeText,
          style: Theme.of(context).textTheme.headline,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          Crikfire.descText,
          style: Theme.of(context).textTheme.caption,
          textAlign: TextAlign.center,
        ),
      ];

  Widget socialActions(context) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.facebookF),
              color: Colors.blueAccent,
              onPressed: () async {
                await _launchURL("https://facebook.com/mohammadsaadnaeem");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.youtube),
              color: Colors.red,
              onPressed: () async {
                await _launchURL("https://youtu.be/eOMPrAUk16E");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.twitter),
              color: Colors.blue[300],
              onPressed: () async {
                await _launchURL("https://twitter.com/IamSaadCarm");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.instagram),
              color: Colors.pinkAccent,
              onPressed: () async {
                await _launchURL("https://instagram.com/imsaad09");
              },
            ),
          ],
        ),
      );

  Widget newActions(context) => Wrap(
        alignment: WrapAlignment.center,
        spacing: 20.0,
        runSpacing: 20.0,
        children: <Widget>[
          ActionCard(
            icon: Icons.wb_incandescent,
            color: Colors.green,
            title: Crikfire.agenda_text,
            onPressed: () => Navigator.pushNamed(context, AgendaPage.routeName),
          ),
          ActionCard(
            icon: Icons.person,
            color: Colors.green,
            title: Crikfire.speakers_text,
            onPressed: () =>
                Navigator.pushNamed(context, SpeakersPage.routeName),
          ),
          ActionCard(
            icon: Icons.people,
            color: Colors.green,
            title: Crikfire.team_text,
            onPressed: () => {},
          ),
          ActionCard(
            icon: Icons.video_library,
            color: Colors.green,
            title: Crikfire.sponsor_text,
            onPressed: () => {},
          ),
          ActionCard(
            icon: Icons.info,
            color: Colors.green,
            title: Crikfire.faq_text,
            onPressed: () => {},
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImageCard(
              img: ConfigBloc().darkModeOn
                  ? Crikfire.banner_dark
                  : Crikfire.banner_light,
            ),
            SizedBox(
              height: 20,
            ),
            ...devFestTexts(context),
            SizedBox(
              height: 20,
            ),
            newActions(context),
            SizedBox(
              height: 20,
            ),
            socialActions(context),
            SizedBox(
              height: 20,
            ),
            Text(
              Crikfire.app_version,
              style: Theme.of(context).textTheme.caption.copyWith(fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final String title;
  final Color color;

  const ActionCard({Key key, this.onPressed, this.icon, this.title, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onPressed,
      child: Ink(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
          color: ConfigBloc().darkModeOn
              ? Tools.hexToColor("#1f2124")
              : Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: !ConfigBloc().darkModeOn
              ? [
                  BoxShadow(
                    color: Colors.grey[200],
                    blurRadius: 10,
                    spreadRadius: 5,
                  )
                ]
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: color,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.title.copyWith(
                    fontSize: 12,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
