import 'package:drift/drift.dart';

import 'package:cinemapedia/config/database/database.dart';
import 'package:cinemapedia/domain/datasources/local_storage_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';

class DriftDatasource extends LocalStorageDatasource {
  final AppDatabase database;

  DriftDatasource([AppDatabase? databaseToUse])
    : database = databaseToUse ?? db;

  @override
  Future<bool> isMovieFavoriteMovie(int movieId) async {
    // Build the query
    final query = database.select(database.favoriteMovies)
      ..where((tbl) => tbl.movieId.equals(movieId));

    // Execute the query
    final favoriteMovie = await query.getSingleOrNull();

    // Return the result
    return favoriteMovie != null;
  }

  @override
  Future<List<Movie>> loadFavoriteMovies({
    int limit = 10,
    int offset = 0,
  }) async {
    final query = database.select(database.favoriteMovies)
      ..limit(limit, offset: offset);

    final favoriteMovies = await query.get();
    return favoriteMovies
        .map(
          (favMovie) => Movie(
            id: favMovie.movieId,
            adult: false,
            genreIds: const [],
            originalLanguage: 'en',
            popularity: 0.0,
            backdropPath: favMovie.backdropPath,
            originalTitle: favMovie.originalTitle,
            posterPath: favMovie.posterPath,
            title: favMovie.title,
            video: false,
            voteCount: 0,
            voteAverage: favMovie.voteAverage,
            overview: favMovie.overview ?? '',
            releaseDate: favMovie.releaseDate ?? DateTime(1900),
          ),
        )
        .toList();
  }

  @override
  Future<void> toggleFavoriteMovie(Movie movie) async {
    // Check if the movie is already a favorite
    final isFavorite = await isMovieFavoriteMovie(movie.id);
    if (isFavorite) {
      // If it is, remove it from favorites
      final deleteQuery = database.delete(database.favoriteMovies)
        ..where((tbl) => tbl.movieId.equals(movie.id));
      await deleteQuery.go();

      return;
    }
    // Build the insert query
    await database
        .into(database.favoriteMovies)
        .insert(
          FavoriteMoviesCompanion.insert(
            movieId: movie.id,
            backdropPath: movie.backdropPath,
            originalTitle: movie.originalTitle,
            posterPath: movie.posterPath,
            title: movie.title,
            voteAverage: Value(movie.voteAverage),
            overview: Value(movie.overview),
            releaseDate: Value(movie.releaseDate),
          ),
        );
  }
}
