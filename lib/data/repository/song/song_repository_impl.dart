import 'package:dartz/dartz.dart';
import 'package:spotifyclone/data/sources/song/song_firebase_service.dart';
import 'package:spotifyclone/domain/repository/song/song.dart';
import 'package:spotifyclone/service_locator.dart';

class SongRepositoryImpl extends SongsRepository {
  @override
  Future<Either> getNewsSongs() async {
    return await sl<SongFirebaseService>().getNewsSongs();
  }
  
  @override
  Future<Either<dynamic, dynamic>> getPlayList() async {
    return await sl<SongFirebaseService>().getPlayList();
  }
}
