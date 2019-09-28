class SessionsData {
  List<Session> sessions;

  SessionsData({this.sessions});

  SessionsData.fromJson(Map<String, dynamic> json) {
    if (json['sessions'] != null) {
      sessions = new List<Session>();
      json['sessions'].forEach((v) {
        sessions.add(Session.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sessions != null) {
      data['sessions'] = this.sessions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Session {
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

  Session({
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

  Session.fromJson(Map<String, dynamic> json) {
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

List<Session> sessions = [
  Session(
    sessionId: "1",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 1",
    sessionTitle: "Virat Kholi",
    sessionDesc: desc,
    speakerImage:
        "https://statics.sportskeeda.com/wp-content/uploads/2015/11/kohli20-1447134902-800.jpg",
    speakerName: "India",
    speakerDesc: "12,359 ODI Runs with an average of 60.31 ",
    track: "cloud",
  ),
  Session(
    sessionId: "2",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 2",
    sessionTitle: "Rohit Sharma",
    sessionDesc: desc,
    speakerImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8VgSkXORwO638t-p4U4wXyowJmnXbr_zcLCRxK6VXK6WXTg2U",
    speakerName: "India",
    speakerDesc: "8,700 ODI Runs with an average of 48.53. ",
    track: "mobile",
  ),
  Session(
    sessionId: "3",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 3",
    sessionTitle: "Baber Azam",
    sessionDesc: desc,
    speakerImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS825OUNOMCHWjWVGn3WrDFpWXg1QzKkcodayxIn1rgfD0UkgC7",
    speakerName: "Pakistan",
    speakerDesc: "3,213 ODI Runs with an average of 53.23. ",
    track: "web",
  ),
  Session(
    sessionId: "4",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 4",
    sessionTitle: "Faf du Plessis",
    sessionDesc: desc,
    speakerImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBnQvyi92eZIyToAkXsOARgvodPVElLv_0DIJOI9ql0truNmL_4g",
    speakerName: "South Africa",
    speakerDesc: "5,507 ODI Runs with an average of 46.37. ",
    track: "cloud",
  ),
  Session(
    sessionId: "5",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 5",
    sessionTitle: "Ross Taylor",
    sessionDesc: desc,
    speakerImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyx9j6of3ah2H8IdeBjKn4pVpkdwzFzZ1reRpNGTU04QmGHYRd",
    speakerName: "New Zealand",
    speakerDesc: "8,371 ODI Runs with an average of 47.87. ",
    track: "web",
  ),
  Session(
    sessionId: "6",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 6",
    sessionTitle: "Kane Williamson",
    sessionDesc: desc,
    speakerImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTxi_I2tQrLY6HEKDfsb04k7dZcmK0tdgLmDCv7qGldPHj70-rKg",
    speakerName: "New Zealand",
    speakerDesc: "6,133 ODI Runs with an average of 47.91. ",
    track: "web",
  ),
  Session(
    sessionId: "7",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 7",
    sessionTitle: "David Warner",
    sessionDesc: desc,
    speakerImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQATu5fQBSkWChnYKZirXDDnH94FB0gbExDlLt0JzpuUfxeXVnAXw",
    speakerName: "Australia",
    speakerDesc: "4,990 ODI Runs with an average of 45.36. ",
    track: "mobile",
  ),
  Session(
    sessionId: "8",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 8",
    sessionTitle: "Joe Root",
    sessionDesc: desc,
    speakerImage:
        "https://www.cricbuzz.com/a/img/v1/595x396/i1/c170039/root-is-the-glue-that-allows-t.jpg",
    speakerName: "England",
    speakerDesc: "5,856 ODI Runs with an average of 51.37. ",
    track: "web",
  ),
  Session(
    sessionId: "9",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 9",
    sessionTitle: "Quinton de Kock",
    sessionDesc: desc,
    speakerImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN84wRbSM2mlOdFcGTz_-sYUbAwUflSd5WlzH7gLcFjeYMx4M2",
    speakerName: "South Africa",
    speakerDesc: "4,907 ODI Runs with an average of 45.02. ",
    track: "mobile",
  ),
  Session(
    sessionId: "10",
    sessionStartTime: "ODI",
    sessionTotalTime: "No : 10",
    sessionTitle: "Jason Roy",
    sessionDesc: desc,
    speakerImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEEZphqEiOPABfWBLmt6SrFcKfJWMFPejoPfLq1SSO6EqhQzoa0w",
    speakerName: "England",
    speakerDesc: "3,381 ODI Runs with an average of 42.8. ",
    track: "mobile",
  ),
];