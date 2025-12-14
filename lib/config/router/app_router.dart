import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:cinemapedia/presentation/views/views.dart';
import 'package:cinemapedia/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/',
              builder: (BuildContext context, GoRouterState state) {
                return HomeView();
              },
              routes: <RouteBase>[
                GoRoute(
                  path: '/',
                  builder: (BuildContext context, GoRouterState state) {
                    return HomeView();
                  },
                ),
                GoRoute(
                  path: 'movie/:id',
                  name: MovieScreen.routeName,
                  builder: (context, state) {
                    final movieId = state.pathParameters['id'] ?? 'no-id';
                    return MovieScreen(movieId: movieId);
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/categories',
              builder: (context, state) => CategoriesView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/favorites',
              builder: (context, state) => FavoritesView(),
            ),
          ],
        ),
      ],
      builder: (context, state, navigationShell) {
        return HomeScreen(navigationShell: navigationShell);
      },
    ),
  ],
  // routes: [
  //   GoRoute(
  //     path: '/',
  //     name: HomeScreen.name,
  //     builder: (context, state) => const HomeScreen(),
  //     routes: [
  //       GoRoute(
  //         path: 'movie/:id',
  //         name: MovieScreen.routeName,
  //         builder: (context, state) {
  //           final movieId = state.pathParameters['id'] ?? 'no-id';
  //           return MovieScreen(movieId: movieId);
  //         },
  //       ),
  //     ],
  //   ),
  // ],
);
