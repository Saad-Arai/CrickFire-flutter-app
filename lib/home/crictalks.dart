class SpeakersData {
  List<Speaker> speakers;

  SpeakersData({this.speakers});

  SpeakersData.fromJson(Map<String, dynamic> json) {
    if (json['speakers'] != null) {
      speakers = new List<Speaker>();
      json['speakers'].forEach((v) {
        speakers.add(Speaker.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.speakers != null) {
      data['speakers'] = this.speakers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Speaker {
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String fbUrl;
  String twitterUrl;
  String recordUrl;
  String speakerSession;
  String sessionId;

  Speaker(
      {this.speakerName,
      this.speakerDesc,
      this.speakerImage,
      this.speakerInfo,
      this.speakerId,
      this.fbUrl,
      this.twitterUrl,
      this.recordUrl,
      this.speakerSession,
      this.sessionId});

  Speaker.fromJson(Map<String, dynamic> json) {
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    recordUrl = json['record_url'];
    speakerSession = json['speaker_session'];
    sessionId = json['session_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['record_url'] = this.recordUrl;
    data['speaker_session'] = this.speakerSession;
    data['session_id'] = this.sessionId;
    return data;
  }
}

List<Speaker> speakers = [
  Speaker(
      speakerSession: "Former Crickter of Australian Cricket Team",
      speakerImage:
          "https://internationalcrickethall.com/wp-content/uploads/2011/07/BRADMAN-1932-e1311043102747-650x677.jpg",
      speakerName: "Sir Don Bradman",
      speakerDesc: "Right-Handed Batsman ",
      fbUrl:
          "https://www.facebook.com/pages/category/Athlete/SIR-Donald-George-Bradman-327157820696539/",
      twitterUrl: "https://twitter.com/Donbradman121",
      recordUrl: "https://www.cricbuzz.com/profiles/5945/sir-donald-bradman"),
  Speaker(
      speakerImage:
          "https://i.pinimg.com/474x/16/42/8d/16428d248ce1509c6222d040edae027b--khan-khan-icc-cricket.jpg",
      speakerName: "Imran Khan",
      speakerDesc: "All-Rounder",
      speakerSession: "Former Captain of Pakistan Cricket Team.",
      fbUrl: "https://www.facebook.com/ImranKhanOfficial/",
      twitterUrl: "https://twitter.com/ImranKhanPTI",
      recordUrl: "https://www.cricbuzz.com/profiles/3647/imran-khan"),
  Speaker(
      speakerImage:
          "https://i2-prod.mirror.co.uk/incoming/article7581581.ece/ALTERNATES/s615b/Shane-Warne.jpg",
      speakerName: "Shane Warne",
      speakerDesc: "Australian Leg Spinner",
      speakerSession: "Former Crickter of Australian Cricket Team.",
      fbUrl: "https://www.facebook.com/officialshanewarne/",
      twitterUrl: "https://twitter.com/ShaneWarne",
      recordUrl: "https://www.cricbuzz.com/profiles/135/shane-warne"),
  Speaker(
      speakerSession: "Former Captain of Indian Cricket Team.",
      speakerImage:
          "https://www.hindustantimes.com/rf/image_size_960x540/HT/p2/2019/02/24/Pictures/india-v-south-africa-2nd-odi_e695728e-380a-11e9-afff-f2b249e2444d.jpg",
      speakerName: "Sachin Tendulkar",
      speakerDesc: "Right-Handed Batsman",
      fbUrl: "https://www.facebook.com/SachinTendulkar/",
      twitterUrl: "https://twitter.com/sachin_rt",
      recordUrl: "https://www.cricbuzz.com/profiles/25/sachin-tendulkar"),
  Speaker(
      speakerSession: "Former Captain of Australian Cricket Team.",
      speakerImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv_YD6EfIfJlioHjgQvvTdAjZVxLV4aKzxpCPYekUEMp2SH3ko",
      speakerName: "Rickey Pointing",
      speakerDesc: "Right-Handed Batsman",
      fbUrl: "https://www.facebook.com/ricky.ponting/",
      twitterUrl: "https://twitter.com/punterheads",
      recordUrl: "https://www.cricbuzz.com/profiles/38/ricky-ponting"),
  Speaker(
      speakerSession: "Former Captain of Pakistan Cricket Team.",
      speakerImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR8fBZ4WP8mgI3cJ1KQKYr7AjIpUoJwL_-SrdjWiNjRtIICNzn",
      speakerName: "Wasim Akram",
      speakerDesc: "Left-Arm Fast Bowler",
      fbUrl: "https://www.facebook.com/wasimakramliveofficial/",
      twitterUrl: "https://twitter.com/wasimakramlive",
      recordUrl: "https://www.cricbuzz.com/profiles/3688/wasim-akram"),
  Speaker(
      speakerSession: "Former Crickter of Westindian Cricket Team",
      speakerImage: "http://p.imgci.com/db/PICTURES/CMS/13200/13240.player.jpg",
      speakerName: "Sir Vivian Richards",
      speakerDesc: "Right-Handed Batsman ",
      fbUrl: "https://www.facebook.com/sirvivianrichards/",
      twitterUrl: "https://twitter.com/ivivianrichards",
      recordUrl: "https://www.cricbuzz.com/profiles/4163/sir-viv-richards"),
  Speaker(
      speakerSession: "Former Crickter of Srilankan Cricket Team.",
      speakerImage:
          "https://statics.sportskeeda.com/wp-content/uploads/2012/10/73720473-799253.jpg",
      speakerName: "Muttiah Muralitharan",
      speakerDesc: "Right-Arm Off Spinner",
      fbUrl: "https://www.facebook.com/MuttiahMuralitharanOfficial/",
      twitterUrl: "https://twitter.com/MuttiahM",
      recordUrl: "https://www.cricbuzz.com/profiles/110/muttiah-muralitharan"),
  Speaker(
      speakerSession: "Former Crickter of England Cricket Team",
      speakerImage:
          "https://i2-prod.chroniclelive.co.uk/incoming/article11977557.ece/ALTERNATES/s615b/Botham.jpg",
      speakerName: "Ian Botham",
      speakerDesc: "All-Rounder",
      fbUrl: "https://www.facebook.com/SirIanBothamOfficial/",
      twitterUrl: "https://twitter.com/BeefyBotham",
      recordUrl: "https://www.cricbuzz.com/profiles/5321/sir-ian-botham"),
  Speaker(
      speakerSession: "Former Captain of Indian Cricket Team.",
      speakerImage: "http://p.imgci.com/db/PICTURES/CMS/13400/13475.player.jpg",
      speakerName: "Kapil Dev",
      speakerDesc: "All-Rounder",
      fbUrl: "https://www.facebook.com/Kapil-Dev-366647872598/",
      twitterUrl: "https://twitter.com/therealkapildev",
      recordUrl: "https://www.cricbuzz.com/profiles/3838/kapil-dev"),
  Speaker(
      speakerSession: "Former Captain of SouthAfrican Cricket Team.",
      speakerImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNqQkGbsxkjDm6jJ77oAbC1zaQ9O83C4k_BKrZi4tqPpTglef6",
      speakerName: "Jacques Kallis",
      speakerDesc: "All-Rounder",
      fbUrl: "https://www.facebook.com/Jacques-Kallis-17957521515/",
      twitterUrl: "https://twitter.com/jacqueskallis75",
      recordUrl: "https://www.cricbuzz.com/profiles/213/jacques-kallis"),
  Speaker(
      speakerSession: "Former Captain of Pakistan Cricket Team.",
      speakerImage:
          "https://s.ndtvimg.com/images/content/2015/sep/806/javed-miandad-pakistan.jpg",
      speakerName: "Javed Miandad",
      speakerDesc: "Right-Handed Batsman",
      fbUrl: "https://www.facebook.com/ItsJavedMiandad/",
      twitterUrl: "https://twitter.com/itsjavedmiandad",
      recordUrl: "https://www.cricbuzz.com/profiles/3664/javed-miandad"),
  Speaker(
      speakerSession: "Former Captain of Westindian Cricket Team",
      speakerImage:
          "https://statics.sportskeeda.com/editor/2019/03/7cbd7-15524724496940-800.jpg",
      speakerName: "Brian Lara",
      speakerDesc: "left-Handed Batsman ",
      fbUrl: "https://www.facebook.com/Brian.C.Lara/",
      twitterUrl: "https://twitter.com/BrianLara",
      recordUrl: "https://www.cricbuzz.com/profiles/240/brian-lara"),
  Speaker(
      speakerSession: "Former Captain of Australian Cricket Team.",
      speakerImage:
          "https://statics.sportskeeda.com/wp-content/uploads/2013/02/Steve-Waugh2-1326529.jpg",
      speakerName: "Steve Waugh",
      speakerDesc: "Right-Handed Batsman",
      fbUrl: "https://www.facebook.com/SteveWaughOfficial/",
      twitterUrl: "https://twitter.com/uniorwaugh349",
      recordUrl: "https://www.cricbuzz.com/profiles/4712/steve-waugh"),
];