import 'package:get_it/get_it.dart';
import 'package:spotifyclone/data/repository/auth/auth_repository_impl.dart';
import 'package:spotifyclone/data/repository/song/song_repository_impl.dart';
import 'package:spotifyclone/data/sources/auth/auth_firebase_service.dart';
import 'package:spotifyclone/data/sources/song/song_firebase_service.dart';
import 'package:spotifyclone/domain/repository/auth/auth.dart';
import 'package:spotifyclone/domain/repository/song/song.dart';
import 'package:spotifyclone/domain/usecases/auth/signin.dart';
import 'package:spotifyclone/domain/usecases/auth/signup.dart';
import 'package:spotifyclone/domain/usecases/song/get_news_songs.dart';
import 'package:spotifyclone/domain/usecases/song/get_play_list.dart';

final sl = GetIt.instance;

Future<void> initializeDependendcies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServicesImpl());
  sl.registerSingleton<SongFirebaseService>(SongFirebaseServiceImpl());
  
  sl.registerSingleton<SongsRepository>(SongRepositoryImpl());
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<GetNewsSongsUseCase>(GetNewsSongsUseCase());
  sl.registerSingleton<GetPlayListUseCase>(GetPlayListUseCase());
  // Register your dependencies here
}
