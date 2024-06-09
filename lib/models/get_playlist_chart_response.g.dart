// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_playlist_chart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPlaylistChartResponse _$GetPlaylistChartResponseFromJson(
        Map<String, dynamic> json) =>
    GetPlaylistChartResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      duration: (json['duration'] as num).toInt(),
      public: json['public'] as bool,
      isLovedTrack: json['is_loved_track'] as bool,
      collaborative: json['collaborative'] as bool,
      nbTracks: (json['nb_tracks'] as num).toInt(),
      fans: (json['fans'] as num).toInt(),
      link: json['link'] as String,
      share: json['share'] as String,
      picture: json['picture'] as String,
      pictureSmall: json['picture_small'] as String,
      pictureMedium: json['picture_medium'] as String,
      pictureBig: json['picture_big'] as String,
      pictureXl: json['picture_xl'] as String,
      checksum: json['checksum'] as String,
      tracklist: json['tracklist'] as String,
      creationDate: DateTime.parse(json['creation_date'] as String),
      md5Image: json['md5_image'] as String,
      pictureType: json['picture_type'] as String,
      creator: Creator.fromJson(json['creator'] as Map<String, dynamic>),
      type: json['type'] as String,
      tracks: Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetPlaylistChartResponseToJson(
        GetPlaylistChartResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'public': instance.public,
      'is_loved_track': instance.isLovedTrack,
      'collaborative': instance.collaborative,
      'nb_tracks': instance.nbTracks,
      'fans': instance.fans,
      'link': instance.link,
      'share': instance.share,
      'picture': instance.picture,
      'picture_small': instance.pictureSmall,
      'picture_medium': instance.pictureMedium,
      'picture_big': instance.pictureBig,
      'picture_xl': instance.pictureXl,
      'checksum': instance.checksum,
      'tracklist': instance.tracklist,
      'creation_date': instance.creationDate.toIso8601String(),
      'md5_image': instance.md5Image,
      'picture_type': instance.pictureType,
      'creator': instance.creator,
      'type': instance.type,
      'tracks': instance.tracks,
    };

Creator _$CreatorFromJson(Map<String, dynamic> json) => Creator(
      id: json['id'] as String,
      name: json['name'] as String,
      tracklist: json['tracklist'] as String,
      type: json['type'] as String,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$CreatorToJson(Creator instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tracklist': instance.tracklist,
      'type': instance.type,
      'link': instance.link,
    };

Tracks _$TracksFromJson(Map<String, dynamic> json) => Tracks(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      checksum: json['checksum'] as String,
    );

Map<String, dynamic> _$TracksToJson(Tracks instance) => <String, dynamic>{
      'data': instance.data,
      'checksum': instance.checksum,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as String,
      readable: json['readable'] as bool,
      title: json['title'] as String,
      titleShort: json['title_short'] as String,
      titleVersion: json['title_version'] as String?,
      link: json['link'] as String,
      duration: json['duration'] as String,
      rank: json['rank'] as String,
      explicitLyrics: json['explicit_lyrics'] as bool,
      explicitContentLyrics: (json['explicit_content_lyrics'] as num).toInt(),
      explicitContentCover: (json['explicit_content_cover'] as num).toInt(),
      preview: json['preview'] as String,
      md5Image: json['md5_image'] as String,
      timeAdd: (json['time_add'] as num).toInt(),
      artist: Creator.fromJson(json['artist'] as Map<String, dynamic>),
      album: Album.fromJson(json['album'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'readable': instance.readable,
      'title': instance.title,
      'title_short': instance.titleShort,
      'title_version': instance.titleVersion,
      'link': instance.link,
      'duration': instance.duration,
      'rank': instance.rank,
      'explicit_lyrics': instance.explicitLyrics,
      'explicit_content_lyrics': instance.explicitContentLyrics,
      'explicit_content_cover': instance.explicitContentCover,
      'preview': instance.preview,
      'md5_image': instance.md5Image,
      'time_add': instance.timeAdd,
      'artist': instance.artist,
      'album': instance.album,
      'type': instance.type,
    };

Album _$AlbumFromJson(Map<String, dynamic> json) => Album(
      id: json['id'] as String,
      title: json['title'] as String,
      cover: json['cover'] as String,
      coverSmall: json['cover_small'] as String,
      coverMedium: json['cover_medium'] as String,
      coverBig: json['cover_big'] as String,
      coverXl: json['cover_xl'] as String,
      md5Image: json['md5_image'] as String,
      tracklist: json['tracklist'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cover': instance.cover,
      'cover_small': instance.coverSmall,
      'cover_medium': instance.coverMedium,
      'cover_big': instance.coverBig,
      'cover_xl': instance.coverXl,
      'md5_image': instance.md5Image,
      'tracklist': instance.tracklist,
      'type': instance.type,
    };
