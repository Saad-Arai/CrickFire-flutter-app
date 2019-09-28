class DataField {
  List<TeamSession> sessionallteams;

  DataField({this.sessionallteams});

  DataField.fromJson(Map<String, dynamic> json) {
    if (json['sessionallteams'] != null) {
      sessionallteams = new List<TeamSession>();
      json['sessionallteams'].forEach((v) {
        sessionallteams.add(TeamSession.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sessionallteams != null) {
      data['sessionallteams'] =
          this.sessionallteams.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TeamSession {
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

  TeamSession({
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

  TeamSession.fromJson(Map<String, dynamic> json) {
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

List<TeamSession> sessionallteams = [
  TeamSession(
    sessionId: "1",
    sessionStartTime: "Rank",
    sessionTotalTime: "No : 1",
    sessionTitle: "England",
    sessionDesc: desc,
    speakerImage:
        "https://upload.wikimedia.org/wikipedia/en/thumb/b/be/Flag_of_England.svg/1280px-Flag_of_England.svg.png",
    speakerName: "Cricket Team",
    speakerDesc: "6,745 points with 125 Ratings. ",
    track: "cloud",
  ),
  TeamSession(
    sessionId: "2",
    sessionStartTime: "Rank",
    sessionTotalTime: "No : 2",
    sessionTitle: "India",
    sessionDesc: desc,
    speakerImage:
        "https://cdn.britannica.com/97/1597-004-7C2918C6/Flag-India.jpg",
    speakerName: "Cricket Team",
    speakerDesc: "7,071 points with 122 Ratings. ",
    track: "cloud",
  ),
  TeamSession(
    sessionId: "3",
    sessionStartTime: "Rank",
    sessionTotalTime: "No : 3",
    sessionTitle: "New Zealand",
    sessionDesc: desc,
    speakerImage:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Flag_of_New_Zealand.svg/2000px-Flag_of_New_Zealand.svg.png",
    speakerName: "Cricket Team",
    speakerDesc: "4,837 points with 112 Ratings. ",
    track: "cloud",
  ),
  TeamSession(
    sessionId: "4",
    sessionStartTime: "Rank",
    sessionTotalTime: "No : 4",
    sessionTitle: "Australia",
    sessionDesc: desc,
    speakerImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9JUGv7xpF64Y6KA8RFZY-DapcW9P1uyEGwsTterv52A0dNxUU",
    speakerName: "Cricket Team",
    speakerDesc: "5,543 points with 111 Ratings. ",
    track: "cloud",
  ),
  TeamSession(
    sessionId: "5",
    sessionStartTime: "Rank",
    sessionTotalTime: "No : 5",
    sessionTitle: "South Africa",
    sessionDesc: desc,
    speakerImage:
        "https://cdn.shopify.com/s/files/1/0707/3783/products/south-africa-flag.jpg?v=1418154718",
    speakerName: "Cricket Team",
    speakerDesc: "5,193 points with 110 Ratings. ",
    track: "cloud",
  ),
  TeamSession(
    sessionId: "6",
    sessionStartTime: "Rank",
    sessionTotalTime: "No : 6",
    sessionTitle: "Pakistan",
    sessionDesc: desc,
    speakerImage:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Flag_of_Pakistan.svg/2000px-Flag_of_Pakistan.svg.png",
    speakerName: "Cricket Team",
    speakerDesc: "4,756 points with 97 Ratings. ",
    track: "cloud",
  ),
  TeamSession(
    sessionId: "7",
    sessionStartTime: "Rank",
    sessionTotalTime: "No : 7",
    sessionTitle: "Bangladesh",
    sessionDesc: desc,
    speakerImage:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/2000px-Flag_of_Bangladesh.svg.png",
    speakerName: "Cricket Team",
    speakerDesc: "3,963 points with 86 Ratings. ",
    track: "cloud",
  ),
  TeamSession(
    sessionId: "8",
    sessionStartTime: "Rank",
    sessionTotalTime: "No : 8",
    sessionTitle: "Srilanka",
    sessionDesc: desc,
    speakerImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH-U_gaih5qO9UWhnFWds2Qdk72N2Ra40UOgm5GZv1CD2iKT0c",
    speakerName: "Cricket Team",
    speakerDesc: "4,425 points with 82 Ratings. ",
    track: "cloud",
  ),
  TeamSession(
    sessionId: "9",
    sessionStartTime: "Rank",
    sessionTotalTime: "No : 9",
    sessionTitle: "West Indies",
    sessionDesc: desc,
    speakerImage:
        "https://www.en.etemaaddaily.com/pages/sports/cricket/6413windies.png",
    speakerName: "Cricket Team",
    speakerDesc: "3,740 points with 76 Ratings. ",
    track: "cloud",
  ),
  TeamSession(
    sessionId: "10",
    sessionStartTime: "Rank",
    sessionTotalTime: "No : 10",
    sessionTitle: "Afghanistan",
    sessionDesc: desc,
    speakerImage:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Afghanistan.svg/2000px-Flag_of_Afghanistan.svg.png",
    speakerName: "Cricket Team",
    speakerDesc: "2,359 points with 59 Ratings. ",
    track: "cloud",
  ),
];