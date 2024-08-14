import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WelcomeRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: BottomNavBarRoute.page),
        AutoRoute(page: CreateTaskRoute.page),
        AutoRoute(page: SeeAllTodosRoute.page),
        AutoRoute(page: PhotoRoute.page),
      ];
}
