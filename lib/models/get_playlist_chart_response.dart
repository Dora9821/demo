// // To parse this JSON data, do
// //
// //     final getPlaylistChartResponse = getPlaylistChartResponseFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'get_playlist_chart_response.g.dart';

GetPlaylistChartResponse getPlaylistChartResponseFromJson(String str) =>
    GetPlaylistChartResponse.fromJson(json.decode(str));

String getPlaylistChartResponseToJson(GetPlaylistChartResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class GetPlaylistChartResponse {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "duration")
  int duration;
  @JsonKey(name: "public")
  bool public;
  @JsonKey(name: "is_loved_track")
  bool isLovedTrack;
  @JsonKey(name: "collaborative")
  bool collaborative;
  @JsonKey(name: "nb_tracks")
  int nbTracks;
  @JsonKey(name: "fans")
  int fans;
  @JsonKey(name: "link")
  String link;
  @JsonKey(name: "share")
  String share;
  @JsonKey(name: "picture")
  String picture;
  @JsonKey(name: "picture_small")
  String pictureSmall;
  @JsonKey(name: "picture_medium")
  String pictureMedium;
  @JsonKey(name: "picture_big")
  String pictureBig;
  @JsonKey(name: "picture_xl")
  String pictureXl;
  @JsonKey(name: "checksum")
  String checksum;
  @JsonKey(name: "tracklist")
  String tracklist;
  @JsonKey(name: "creation_date")
  DateTime creationDate;
  @JsonKey(name: "md5_image")
  String md5Image;
  @JsonKey(name: "picture_type")
  String pictureType;
  @JsonKey(name: "creator")
  Creator creator;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "tracks")
  Tracks tracks;

  GetPlaylistChartResponse({
    required this.id,
    required this.title,
    required this.description,
    required this.duration,
    required this.public,
    required this.isLovedTrack,
    required this.collaborative,
    required this.nbTracks,
    required this.fans,
    required this.link,
    required this.share,
    required this.picture,
    required this.pictureSmall,
    required this.pictureMedium,
    required this.pictureBig,
    required this.pictureXl,
    required this.checksum,
    required this.tracklist,
    required this.creationDate,
    required this.md5Image,
    required this.pictureType,
    required this.creator,
    required this.type,
    required this.tracks,
  });

  factory GetPlaylistChartResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPlaylistChartResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetPlaylistChartResponseToJson(this);
}

@JsonSerializable()
class Creator {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "tracklist")
  String tracklist;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "link")
  String? link;

  Creator({
    required this.id,
    required this.name,
    required this.tracklist,
    required this.type,
    this.link,
  });

  factory Creator.fromJson(Map<String, dynamic> json) =>
      _$CreatorFromJson(json);

  Map<String, dynamic> toJson() => _$CreatorToJson(this);
}

@JsonSerializable()
class Tracks {
  @JsonKey(name: "data")
  List<Datum> data;
  @JsonKey(name: "checksum")
  String checksum;

  Tracks({
    required this.data,
    required this.checksum,
  });

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);

  Map<String, dynamic> toJson() => _$TracksToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "readable")
  bool readable;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "title_short")
  String titleShort;
  @JsonKey(name: "title_version")
  String? titleVersion;
  @JsonKey(name: "link")
  String link;
  @JsonKey(name: "duration")
  String duration;
  @JsonKey(name: "rank")
  String rank;
  @JsonKey(name: "explicit_lyrics")
  bool explicitLyrics;
  @JsonKey(name: "explicit_content_lyrics")
  int explicitContentLyrics;
  @JsonKey(name: "explicit_content_cover")
  int explicitContentCover;
  @JsonKey(name: "preview")
  String preview;
  @JsonKey(name: "md5_image")
  String md5Image;
  @JsonKey(name: "time_add")
  int timeAdd;
  @JsonKey(name: "artist")
  Creator artist;
  @JsonKey(name: "album")
  Album album;
  @JsonKey(name: "type")
  String type;

  Datum({
    required this.id,
    required this.readable,
    required this.title,
    required this.titleShort,
    this.titleVersion,
    required this.link,
    required this.duration,
    required this.rank,
    required this.explicitLyrics,
    required this.explicitContentLyrics,
    required this.explicitContentCover,
    required this.preview,
    required this.md5Image,
    required this.timeAdd,
    required this.artist,
    required this.album,
    required this.type,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class Album {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "cover")
  String cover;
  @JsonKey(name: "cover_small")
  String coverSmall;
  @JsonKey(name: "cover_medium")
  String coverMedium;
  @JsonKey(name: "cover_big")
  String coverBig;
  @JsonKey(name: "cover_xl")
  String coverXl;
  @JsonKey(name: "md5_image")
  String md5Image;
  @JsonKey(name: "tracklist")
  String tracklist;
  @JsonKey(name: "type")
  String type;

  Album({
    required this.id,
    required this.title,
    required this.cover,
    required this.coverSmall,
    required this.coverMedium,
    required this.coverBig,
    required this.coverXl,
    required this.md5Image,
    required this.tracklist,
    required this.type,
  });

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
