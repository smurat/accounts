import 'package:accounts_app/constants/route_paths.dart';
import 'package:accounts_app/core/router/route_sources.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RoutePaths.accountList,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: RoutePaths.accountList,
        builder: (context, state) {
          return const AccountListPage();
        },
        routes: [
          GoRoute(
            name: RoutePaths.accountDetails,
            path: RoutePaths.accountDetails,
            builder: (context, state) {
              final id = state.uri.queryParameters['id'] ?? '';
              return AccountDetailPage(id: id);
            },
          ),
        ],
      ),
    ],
  );
});
