import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isFavoriteMovieProvider = FutureProvider.family.autoDispose<bool, int>((ref, movieId) async {
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  return await localStorageRepository.isMovieFavoriteMovie(movieId);
});