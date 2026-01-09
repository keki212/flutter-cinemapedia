import 'package:flutter_riverpod/legacy.dart';

import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/local_storage_repository.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';

// /**
//   {
//     1: Movie,
//     2: Movie,
//     3: Movie,
//     4: Movie,
//   }
//  */

final favotireMoviesProvider = StateNotifierProvider((ref) {
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  return StorageMoviesNotifier(localStorageRepository: localStorageRepository);
});

class StorageMoviesNotifier extends StateNotifier<Map<int, Movie>> {
  int page = 0;
  final LocalStorageRepository localStorageRepository;

  StorageMoviesNotifier({required this.localStorageRepository}) : super({});

  Future<List<Movie>> loadNextPage() async {
    final movies = await localStorageRepository.loadFavoriteMovies(
      limit: 12,
      offset: page * 12,
    );
    page++;

    //final moviesMap = {for (var movie in movies) movie.id: movie};
    final moviesMap = <int, Movie>{};

    for (final movie in movies) {
      moviesMap[movie.id] = movie;
    }

    state = {...state, ...moviesMap};

    return movies;
  }

  Future<void> toggleFavoriteMovie(Movie movie) async {
    final isInFavorites = await localStorageRepository.isMovieFavoriteMovie(
      movie.id,
    );
    await localStorageRepository.toggleFavoriteMovie(movie);

    if (isInFavorites) {
      state.remove(movie.id);
      state = {...state};
      return;
    }

    state = {...state, movie.id: movie};
  }
}
