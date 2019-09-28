import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Crikfire {
  static const String app_name = "CrikFire ";
  static const String app_version = "Version 1.0.0";
  static const int app_version_code = 1;
  static const String app_color = "#ffd7167";
  static Color primaryAppColor = Colors.white;
  static Color secondaryAppColor = Colors.black;
  static const String google_sans_family = "GoogleSans";
  static bool isDebugMode = true;

  //* Images

  static const String banner_light = "assets/images/banner_light.jpg";
  static const String banner_dark = "assets/images/banner_dark.jpg";

  //*  Texts
  static const String welcomeText = "Welcome to CrikFire Sports";
  static const String descText =
      '''CrikFire World is an Sports App.It is a Cricket community where we could access the Cricket news all over the World. It also shows the stats of the batsman, Bowlers and Teams Rankings and much more.Some recent Cricket matches and cricket athletes videos are also shows in the video library.''';

  static const String loading_text = "Loading...";
  static const String try_again_text = "Try Again";
  static const String some_error_text = "Some error";
  static const String signInText = "Sign In";
  static const String signInGoogleText = "Sign in with google";
  static const String signOutText = "Sign Out";
  static const String wrongText = "Something went wrong";
  static const String confirmText = "Confirm";
  static const String supportText = "Support Needed";
  static const String featureText = "Feature Request";
  static const String moreFeatureText = "More Features coming soon.";
  static const String updateNowText =
      "Please update your app for seamless experience.";
  static const String checkNetText =
      "It seems like your internet connection is not active.";

//* ActionTexts
  static const String agenda_text = "Leadboard";
  static const String speakers_text = "Crik Talk";
  static const String team_text = "Teams";
  static const String sponsor_text = "Videos";
  static const String faq_text = "About us";

  //* Preferences
  static SharedPreferences prefs;
  static const String darkModePref = "darkModePref";
}