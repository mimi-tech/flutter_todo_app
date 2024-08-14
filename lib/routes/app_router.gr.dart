// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:flutter_todo_app/bottom_nav_bar_page.dart' as _i1;
import 'package:flutter_todo_app/home/page/home_page.dart' as _i3;
import 'package:flutter_todo_app/home/page/see_all_todos_page.dart' as _i5;
import 'package:flutter_todo_app/photos/page/photo_page.dart' as _i4;
import 'package:flutter_todo_app/task/page/create_task_page.dart' as _i2;
import 'package:flutter_todo_app/welcome/page/welcome_page.dart' as _i6;

/// generated route for
/// [_i1.BottomNavBarPage]
class BottomNavBarRoute extends _i7.PageRouteInfo<void> {
  const BottomNavBarRoute({List<_i7.PageRouteInfo>? children})
      : super(
          BottomNavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavBarRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.BottomNavBarPage();
    },
  );
}

/// generated route for
/// [_i2.CreateTaskPage]
class CreateTaskRoute extends _i7.PageRouteInfo<CreateTaskRouteArgs> {
  CreateTaskRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          CreateTaskRoute.name,
          args: CreateTaskRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CreateTaskRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateTaskRouteArgs>(
          orElse: () => const CreateTaskRouteArgs());
      return _i2.CreateTaskPage(key: args.key);
    },
  );
}

class CreateTaskRouteArgs {
  const CreateTaskRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'CreateTaskRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.PhotoPage]
class PhotoRoute extends _i7.PageRouteInfo<void> {
  const PhotoRoute({List<_i7.PageRouteInfo>? children})
      : super(
          PhotoRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhotoRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.PhotoPage();
    },
  );
}

/// generated route for
/// [_i5.SeeAllTodosPage]
class SeeAllTodosRoute extends _i7.PageRouteInfo<void> {
  const SeeAllTodosRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SeeAllTodosRoute.name,
          initialChildren: children,
        );

  static const String name = 'SeeAllTodosRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.SeeAllTodosPage();
    },
  );
}

/// generated route for
/// [_i6.WelcomePage]
class WelcomeRoute extends _i7.PageRouteInfo<void> {
  const WelcomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.WelcomePage();
    },
  );
}
