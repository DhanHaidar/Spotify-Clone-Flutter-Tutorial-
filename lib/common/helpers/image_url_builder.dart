import 'package:spotifyclone/core/configs/constants/app_urls.dart';
import 'package:spotifyclone/domain/entities/song/song.dart';

class ImageUrlBuilder {
  static String songCoverFileName({
    required String artist,
    required String title,
  }) {
    return '\$artist - \\$title.jpg';
  }

  static String buildSongCoverUrl({
    required String artist,
    required String title,
  }) {
    final fileName = songCoverFileName(artist: artist, title: title);
    final encoded = Uri.encodeComponent(fileName);
    return AppURLs.supabaseStorage + encoded;
  }

  static String buildSongCoverUrlFromEntity(SongEntity song) {
    return buildSongCoverUrl(artist: song.artist, title: song.title);
  }
}
