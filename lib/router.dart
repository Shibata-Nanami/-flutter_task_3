import 'package:flutter/material.dart';
import 'package:flutter_task_3/todo_add_page.dart';
import 'package:go_router/go_router.dart';
import 'home_screen.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(child: HomeScreen());
      },
      routes: [
        GoRoute(
          path: 'todo',
          pageBuilder: (_, __) {
            return const MaterialPage(
              child: TodoAddPage(),
            );
          },
        ),
      ],
    ),
  ],
);
