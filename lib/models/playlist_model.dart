// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:demo/models/song_model.dart';

class Playlist {
  final String title;
  final List<SongPageArgument> songs;
  final String imageUrl;
  Playlist({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });

  // static List<Playlist> playlists = [
  //   Playlist(
  //       title: 'POP',
  //       songs: SongPageArgument.songs,
  //       imageUrl:
  //           'https://t3.ftcdn.net/jpg/06/06/79/70/360_F_606797008_rGPPk6bFWDQydnX7g7w1w9dVVZ4mD22J.jpg'),
  //   Playlist(
  //       title: 'Rock n Roll',
  //       songs: SongPageArgument.songs,
  //       imageUrl:
  //           'https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA1L3NrOTc5MS1pbWFnZS1rd3Z1amE5Ni5qcGc.jpg'),
  //   Playlist(
  //       title: 'Hip-hop',
  //       songs: SongPageArgument.songs,
  //       imageUrl:
  //           'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?size=626&ext=jpg&ga=GA1.1.1224184972.1714176000&semt=sph'),
  // ];
}
