class Databowler {
  List<bowSession> sessionBow;

  Databowler({this.sessionBow});

  Databowler.fromJson(Map<String, dynamic> json) {
    if (json['sessionBow'] != null) {
      sessionBow = new List<bowSession>();
      json['sessionBow'].forEach((v) {
        sessionBow.add(bowSession.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sessionBow != null) {
      data['sessionBow'] = this.sessionBow.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class bowSession {
  String sessionId;
  String sessionTitle;
  String sessionDesc;
  String sessionImage;
  String sessionStartTime;
  String sessionTotalTime;
  String sessionLink;
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String track;

  bowSession({
    this.sessionId,
    this.sessionTitle,
    this.sessionDesc,
    this.sessionImage,
    this.sessionStartTime,
    this.sessionTotalTime,
    this.sessionLink,
    this.speakerName,
    this.speakerDesc,
    this.speakerImage,
    this.speakerInfo,
    this.speakerId,
    this.track,
  });

  bowSession.fromJson(Map<String, dynamic> json) {
    sessionId = json['session_id'];
    sessionTitle = json['session_title'];
    sessionDesc = json['session_desc'];
    sessionImage = json['session_image'];
    sessionStartTime = json['session_start_time'];
    sessionTotalTime = json['session_total_time'];
    sessionLink = json['session_link'];
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    track = json['track'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['session_id'] = this.sessionId;
    data['session_title'] = this.sessionTitle;
    data['session_desc'] = this.sessionDesc;
    data['session_image'] = this.sessionImage;
    data['session_start_time'] = this.sessionStartTime;
    data['session_total_time'] = this.sessionTotalTime;
    data['session_link'] = this.sessionLink;
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['track'] = this.track;
    return data;
  }
}

//*  Sessions hardcoded data
final desc = "The async/await feature allows you to write the asynchronous code in a straightforward way," +
    "without a long list of callbacks. Used in C# for quite a while already, it has proven to be extremely useful.In Kotlin you have async and await as library functions implemented using coroutines." +
    "A coroutine is a light-weight thread that can be suspended and resumed later." +
    "Very precise definition, but might be confusing at first. What 'light-weight thread' means?" +
    "How does suspension work? This talk uncovers the magic. We'll discuss the concept of coroutines," +
    "the power of async/await, and how you can benefit from defining your asynchronous computations using suspend function." +
    " The content of this video was not produced or created by Google.";

//* Tracks can be mobile, web and cloud (Make it web by default or if the track type is not clear.)

List<bowSession> sessionBow = [
  bowSession(
    sessionId: "1",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 1",
    sessionTitle: "Jasprit Bumrah",
    sessionDesc: desc,
    speakerImage:
        "https://static.asianetnews.com/images/01dbyvcrm4tek8nxpn2xa9vdg6/Jasprit-Bumrah_710x400xt.jpg",
    speakerName: "India",
    speakerDesc: "103 Wickets with an average of 21.88. ",
    track: "cloud",
  ),
  bowSession(
    sessionId: "2",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 2",
    sessionTitle: "Trent Boult",
    sessionDesc: desc,
    speakerImage:
        "https://resources.stuff.co.nz/content/dam/images/1/4/j/8/d/6/image.related.StuffLandscapeSixteenByNine.710x400.14manu.png/1441087143451.jpg",
    speakerName: "New Zealand",
    speakerDesc: "164 Wickets with an average of 25.06.",
    track: "mobile",
  ),
  bowSession(
    sessionId: "3",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 3",
    sessionTitle: "Kagiso Rabada",
    sessionDesc: desc,
    speakerImage:
        "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201705/rabada_647_052317073645.jpg",
    speakerName: "South Africa",
    speakerDesc: "117 Wickets with an average of 27.34.",
    track: "web",
  ),
  bowSession(
    sessionId: "4",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 4",
    sessionTitle: "Pat Cummins",
    sessionDesc: desc,
    speakerImage:
        "http://i.ndtvimg.com/i/2017-03/pat-cummins-odi-afp_806x605_61489203855.jpg",
    speakerName: "Australia",
    speakerDesc: "96 Wickets with an average of 27.11.",
    track: "web",
  ),
  bowSession(
    sessionId: "5",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 5",
    sessionTitle: "Imran Tahir",
    sessionDesc: desc,
    speakerImage:
        "https://english.cdn.zeenews.com/sites/default/files/2015/03/18/336530-imran-tahir-odi-celebr-700.jpg",
    speakerName: "South Africa",
    speakerDesc: "173 Wickets with an average of 24.83.",
    track: "web",
  ),
  bowSession(
    sessionId: "6",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 6",
    sessionTitle: "Mujeeb Ur Rahman",
    sessionDesc: desc,
    speakerImage:
        "https://admin.thecricketer.com/weblab/Sites/96c8b790-b593-bfda-0ba4-ecd3a9fdefc2/resources/images/site/mujeebheadshot-min.jpg",
    speakerName: "Afghanistan",
    speakerDesc: "58 Wickets with an average of 22.06.",
    track: "web",
  ),
  bowSession(
    sessionId: "7",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 7",
    sessionTitle: "Chris Woakes",
    sessionDesc: desc,
    speakerImage:
        "https://www.worldbiographynews.com/wp-content/uploads/2019/06/Chris-Woakes-Biography-Facts-Career-Family-Wife-Net-worth-More-1024x576.jpg",
    speakerName: "England",
    speakerDesc: "142 Wickets with an average of 30.47.",
    track: "web",
  ),
  bowSession(
    sessionId: "8",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 8",
    sessionTitle: "Mitchell Starc",
    sessionDesc: desc,
    speakerImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9Q8oiEspLv6z-XnYTkZm0bkdy7nHlle6mEFc9q1cD90poeXeG",
    speakerName: "Australia",
    speakerDesc: "172 Wickets with an average of 20.99.",
    track: "web",
  ),
  bowSession(
    sessionId: "9",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 9",
    sessionTitle: "Rashid Khan",
    sessionDesc: desc,
    speakerImage:
        "https://www.geosuper.tv/assets/uploads/updates/2019-07-12/1522_240665_updates.jpg",
    speakerName: "Afghanistan",
    speakerDesc: "131 Wickets with an average of 17.80.",
    track: "web",
  ),
  bowSession(
    sessionId: "10",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 10",
    sessionTitle: "Matt Henry",
    sessionDesc: desc,
    speakerImage:
        "https://s3.ap-southeast-1.amazonaws.com/images.asianage.com/images/aa-Cover-8qia3s0dv451n4mvvlc984i6d7-20190526122444.jpeg",
    speakerName: "New Zealand",
    speakerDesc: "92 Wickets with an average of 26.48.",
    track: "web",
  ),
];