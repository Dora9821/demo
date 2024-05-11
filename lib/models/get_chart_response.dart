class GetMusicChartResponse {
  Tracks? tracks;
  Tracks? albums;
  Tracks? artists;
  Tracks? playlists;
  Tracks? podcasts;

  GetMusicChartResponse(
      {this.tracks, this.albums, this.artists, this.playlists, this.podcasts});

  GetMusicChartResponse.fromJson(Map<String, dynamic> json) {
    tracks =
        json['tracks'] != null ? new Tracks.fromJson(json['tracks']) : null;
    albums =
        json['albums'] != null ? new Tracks.fromJson(json['albums']) : null;
    artists =
        json['artists'] != null ? new Tracks.fromJson(json['artists']) : null;
    playlists = json['playlists'] != null
        ? new Tracks.fromJson(json['playlists'])
        : null;
    podcasts =
        json['podcasts'] != null ? new Tracks.fromJson(json['podcasts']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tracks != null) {
      data['tracks'] = this.tracks!.toJson();
    }
    if (this.albums != null) {
      data['albums'] = this.albums!.toJson();
    }
    if (this.artists != null) {
      data['artists'] = this.artists!.toJson();
    }
    if (this.playlists != null) {
      data['playlists'] = this.playlists!.toJson();
    }
    if (this.podcasts != null) {
      data['podcasts'] = this.podcasts!.toJson();
    }
    return data;
  }
}

class Tracks {
  List<TrackDetailData>? data;
  int? total;

  Tracks({this.data, this.total});

  Tracks.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <TrackDetailData>[];
      json['data'].forEach((v) {
        data!.add(new TrackDetailData.fromJson(v));
      });
    }
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    return data;
  }
}

class TrackDetailData {
  int? id;
  String? title;
  String? titleShort;
  String? titleVersion;
  String? link;
  int? duration;
  int? rank;
  bool? explicitLyrics;
  int? explicitContentLyrics;
  int? explicitContentCover;
  String? preview;
  String? md5Image;
  int? position;
  Artist? artist;
  Album? album;
  String? type;

  TrackDetailData(
      {this.id,
      this.title,
      this.titleShort,
      this.titleVersion,
      this.link,
      this.duration,
      this.rank,
      this.explicitLyrics,
      this.explicitContentLyrics,
      this.explicitContentCover,
      this.preview,
      this.md5Image,
      this.position,
      this.artist,
      this.album,
      this.type});

  TrackDetailData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    titleShort = json['title_short'];
    titleVersion = json['title_version'];
    link = json['link'];
    duration = json['duration'];
    rank = json['rank'];
    explicitLyrics = json['explicit_lyrics'];
    explicitContentLyrics = json['explicit_content_lyrics'];
    explicitContentCover = json['explicit_content_cover'];
    preview = json['preview'];
    md5Image = json['md5_image'];
    position = json['position'];
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    album = json['album'] != null ? new Album.fromJson(json['album']) : null;
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['title_short'] = this.titleShort;
    data['title_version'] = this.titleVersion;
    data['link'] = this.link;
    data['duration'] = this.duration;
    data['rank'] = this.rank;
    data['explicit_lyrics'] = this.explicitLyrics;
    data['explicit_content_lyrics'] = this.explicitContentLyrics;
    data['explicit_content_cover'] = this.explicitContentCover;
    data['preview'] = this.preview;
    data['md5_image'] = this.md5Image;
    data['position'] = this.position;
    if (this.artist != null) {
      data['artist'] = this.artist!.toJson();
    }
    if (this.album != null) {
      data['album'] = this.album!.toJson();
    }
    data['type'] = this.type;
    return data;
  }
}

class Artist {
  int? id;
  String? name;
  String? link;
  String? picture;
  String? pictureSmall;
  String? pictureMedium;
  String? pictureBig;
  String? pictureXl;
  bool? radio;
  String? tracklist;
  String? type;

  Artist(
      {this.id,
      this.name,
      this.link,
      this.picture,
      this.pictureSmall,
      this.pictureMedium,
      this.pictureBig,
      this.pictureXl,
      this.radio,
      this.tracklist,
      this.type});

  Artist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    link = json['link'];
    picture = json['picture'];
    pictureSmall = json['picture_small'];
    pictureMedium = json['picture_medium'];
    pictureBig = json['picture_big'];
    pictureXl = json['picture_xl'];
    radio = json['radio'];
    tracklist = json['tracklist'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['link'] = this.link;
    data['picture'] = this.picture;
    data['picture_small'] = this.pictureSmall;
    data['picture_medium'] = this.pictureMedium;
    data['picture_big'] = this.pictureBig;
    data['picture_xl'] = this.pictureXl;
    data['radio'] = this.radio;
    data['tracklist'] = this.tracklist;
    data['type'] = this.type;
    return data;
  }
}

class Album {
  int? id;
  String? title;
  String? cover;
  String? coverSmall;
  String? coverMedium;
  String? coverBig;
  String? coverXl;
  String? md5Image;
  String? tracklist;
  String? type;

  Album(
      {this.id,
      this.title,
      this.cover,
      this.coverSmall,
      this.coverMedium,
      this.coverBig,
      this.coverXl,
      this.md5Image,
      this.tracklist,
      this.type});

  Album.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    cover = json['cover'];
    coverSmall = json['cover_small'];
    coverMedium = json['cover_medium'];
    coverBig = json['cover_big'];
    coverXl = json['cover_xl'];
    md5Image = json['md5_image'];
    tracklist = json['tracklist'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['cover'] = this.cover;
    data['cover_small'] = this.coverSmall;
    data['cover_medium'] = this.coverMedium;
    data['cover_big'] = this.coverBig;
    data['cover_xl'] = this.coverXl;
    data['md5_image'] = this.md5Image;
    data['tracklist'] = this.tracklist;
    data['type'] = this.type;
    return data;
  }
}

// class Data {
//   int? id;
//   String? title;
//   String? link;
//   String? cover;
//   String? coverSmall;
//   String? coverMedium;
//   String? coverBig;
//   String? coverXl;
//   String? md5Image;
//   String? recordType;
//   String? tracklist;
//   bool? explicitLyrics;
//   int? position;
//   Artist? artist;
//   String? type;

//   Data(
//       {this.id,
//       this.title,
//       this.link,
//       this.cover,
//       this.coverSmall,
//       this.coverMedium,
//       this.coverBig,
//       this.coverXl,
//       this.md5Image,
//       this.recordType,
//       this.tracklist,
//       this.explicitLyrics,
//       this.position,
//       this.artist,
//       this.type});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     link = json['link'];
//     cover = json['cover'];
//     coverSmall = json['cover_small'];
//     coverMedium = json['cover_medium'];
//     coverBig = json['cover_big'];
//     coverXl = json['cover_xl'];
//     md5Image = json['md5_image'];
//     recordType = json['record_type'];
//     tracklist = json['tracklist'];
//     explicitLyrics = json['explicit_lyrics'];
//     position = json['position'];
//     artist =
//         json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
//     type = json['type'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['link'] = this.link;
//     data['cover'] = this.cover;
//     data['cover_small'] = this.coverSmall;
//     data['cover_medium'] = this.coverMedium;
//     data['cover_big'] = this.coverBig;
//     data['cover_xl'] = this.coverXl;
//     data['md5_image'] = this.md5Image;
//     data['record_type'] = this.recordType;
//     data['tracklist'] = this.tracklist;
//     data['explicit_lyrics'] = this.explicitLyrics;
//     data['position'] = this.position;
//     if (this.artist != null) {
//       data['artist'] = this.artist!.toJson();
//     }
//     data['type'] = this.type;
//     return data;
//   }
// }

// class Data {
//   int? id;
//   String? name;
//   String? link;
//   String? picture;
//   String? pictureSmall;
//   String? pictureMedium;
//   String? pictureBig;
//   String? pictureXl;
//   bool? radio;
//   String? tracklist;
//   int? position;
//   String? type;

//   Data(
//       {this.id,
//       this.name,
//       this.link,
//       this.picture,
//       this.pictureSmall,
//       this.pictureMedium,
//       this.pictureBig,
//       this.pictureXl,
//       this.radio,
//       this.tracklist,
//       this.position,
//       this.type});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     link = json['link'];
//     picture = json['picture'];
//     pictureSmall = json['picture_small'];
//     pictureMedium = json['picture_medium'];
//     pictureBig = json['picture_big'];
//     pictureXl = json['picture_xl'];
//     radio = json['radio'];
//     tracklist = json['tracklist'];
//     position = json['position'];
//     type = json['type'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['link'] = this.link;
//     data['picture'] = this.picture;
//     data['picture_small'] = this.pictureSmall;
//     data['picture_medium'] = this.pictureMedium;
//     data['picture_big'] = this.pictureBig;
//     data['picture_xl'] = this.pictureXl;
//     data['radio'] = this.radio;
//     data['tracklist'] = this.tracklist;
//     data['position'] = this.position;
//     data['type'] = this.type;
//     return data;
//   }
// }

// class Data {
//   int? id;
//   String? title;
//   bool? public;
//   int? nbTracks;
//   String? link;
//   String? picture;
//   String? pictureSmall;
//   String? pictureMedium;
//   String? pictureBig;
//   String? pictureXl;
//   String? checksum;
//   String? tracklist;
//   String? creationDate;
//   String? md5Image;
//   String? pictureType;
//   User? user;
//   String? type;

//   Data(
//       {this.id,
//       this.title,
//       this.public,
//       this.nbTracks,
//       this.link,
//       this.picture,
//       this.pictureSmall,
//       this.pictureMedium,
//       this.pictureBig,
//       this.pictureXl,
//       this.checksum,
//       this.tracklist,
//       this.creationDate,
//       this.md5Image,
//       this.pictureType,
//       this.user,
//       this.type});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     public = json['public'];
//     nbTracks = json['nb_tracks'];
//     link = json['link'];
//     picture = json['picture'];
//     pictureSmall = json['picture_small'];
//     pictureMedium = json['picture_medium'];
//     pictureBig = json['picture_big'];
//     pictureXl = json['picture_xl'];
//     checksum = json['checksum'];
//     tracklist = json['tracklist'];
//     creationDate = json['creation_date'];
//     md5Image = json['md5_image'];
//     pictureType = json['picture_type'];
//     user = json['user'] != null ? new User.fromJson(json['user']) : null;
//     type = json['type'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['public'] = this.public;
//     data['nb_tracks'] = this.nbTracks;
//     data['link'] = this.link;
//     data['picture'] = this.picture;
//     data['picture_small'] = this.pictureSmall;
//     data['picture_medium'] = this.pictureMedium;
//     data['picture_big'] = this.pictureBig;
//     data['picture_xl'] = this.pictureXl;
//     data['checksum'] = this.checksum;
//     data['tracklist'] = this.tracklist;
//     data['creation_date'] = this.creationDate;
//     data['md5_image'] = this.md5Image;
//     data['picture_type'] = this.pictureType;
//     if (this.user != null) {
//       data['user'] = this.user!.toJson();
//     }
//     data['type'] = this.type;
//     return data;
//   }
// }

class User {
  int? id;
  String? name;
  String? tracklist;
  String? type;

  User({this.id, this.name, this.tracklist, this.type});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    tracklist = json['tracklist'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['tracklist'] = this.tracklist;
    data['type'] = this.type;
    return data;
  }
}

// class Data {
//   int? id;
//   String? title;
//   String? description;
//   bool? available;
//   int? fans;
//   String? link;
//   String? share;
//   String? picture;
//   String? pictureSmall;
//   String? pictureMedium;
//   String? pictureBig;
//   String? pictureXl;
//   String? type;

//   Data(
//       {this.id,
//       this.title,
//       this.description,
//       this.available,
//       this.fans,
//       this.link,
//       this.share,
//       this.picture,
//       this.pictureSmall,
//       this.pictureMedium,
//       this.pictureBig,
//       this.pictureXl,
//       this.type});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     description = json['description'];
//     available = json['available'];
//     fans = json['fans'];
//     link = json['link'];
//     share = json['share'];
//     picture = json['picture'];
//     pictureSmall = json['picture_small'];
//     pictureMedium = json['picture_medium'];
//     pictureBig = json['picture_big'];
//     pictureXl = json['picture_xl'];
//     type = json['type'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['description'] = this.description;
//     data['available'] = this.available;
//     data['fans'] = this.fans;
//     data['link'] = this.link;
//     data['share'] = this.share;
//     data['picture'] = this.picture;
//     data['picture_small'] = this.pictureSmall;
//     data['picture_medium'] = this.pictureMedium;
//     data['picture_big'] = this.pictureBig;
//     data['picture_xl'] = this.pictureXl;
//     data['type'] = this.type;
//     return data;
//   }
// }