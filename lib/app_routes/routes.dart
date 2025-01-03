import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_router/app_routes/routes_name.dart';
import 'package:practice_router/screen/home_page.dart';
import 'package:practice_router/screen/tab_bar/category.dart';
import 'package:practice_router/screen/tab_bar/collection.dart';
import 'package:practice_router/screen/tab_bar/logout.dart';
import 'package:practice_router/screen/tab_bar/neseted_navigation.dart';
import 'package:practice_router/screen/tab_bar/profile.dart';
import 'package:practice_router/screen/tab_bar/task.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: "/collection",
  routes: [
    // GoRoute(
    //   path: '/home',
    //   builder: (context, state) => const HomePage(),
    // ),
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          // initialLocation: '/collection',
          routes: [
            GoRoute(
              path: '/collection',
              builder: (context, state) {
                return const Collection();
              },
              routes: [
                //GoRoute(path: ''),
              ]
            )
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/task',
              builder: (context, state) {
                return Task();
              },
            )
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/category',
              builder: (context, state) {
                return Category();
              },
            )
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) {
                return Profile();
              },
            )
          ],
        ),
      ],
      builder: (context, state, navigationShell) {
        // state.pathParameters
        return HomePage(navigationShell: navigationShell);
      },
    ),
    GoRoute(
      name: RoutesName.logoutRoute,
      path: "/logout/:id/:name",
      builder: (context, state) {
        Object? data = state.extra;
        print(state.pathParameters['id']);
        print(state.pathParameters['name']);
        // print(state.uri.queryParameters['fullName']);
        return LogoutScreen();
      },
    ),
  ],
);
