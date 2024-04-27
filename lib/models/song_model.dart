// ignore_for_file: public_member_api_docs, sort_constructors_first
class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
        title: 'Chúng ta của tương lai',
        description: 'Sơn Tùng MTP',
        url: 'lib/assets/music/ChungTaCuaTuongLai-SonTungMTP-14032595.mp3',
        coverUrl: 'lib/assets/images/chungtacuatuonglai.jpeg'),
    Song(
        title: 'Khác biệt to lớn',
        description: 'Trịnh Thăng Bình ft Liz Kim Cương',
        url:
            'lib/assets/music/KhacBietToLon-TrinhThangBinhLizKimCuong-6486907.mp3',
        coverUrl: 'lib/assets/images/khacbiettolon.jpeg'),
    Song(
        title: 'Thương em là điều anh không thể ngờ',
        description: 'Noo Phước Thịnh',
        url:
            'lib/assets/music/ThuongEmLaDieuAnhKhongTheNgo-NooPhuocThinh-5827347.mp3',
        coverUrl: 'lib/assets/images/thuongemladieuanhkothengo.jpeg'),
  ];
}
