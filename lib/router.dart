import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'memo_Addition.dart';
import 'memo_Screen.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreenState());
        }),
    GoRoute(
        path: '/Todo',
        pageBuilder: (context, state) {
          return const MaterialPage(child: TodoAddPage());
        }),
  ],
);
