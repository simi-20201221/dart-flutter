import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/app/route/route_information_parser.dart';
import 'package:todo_app/app/route/router_delegate.dart';
import 'package:todo_app/app/theme/theme_provider.dart';

class MainApp extends ConsumerWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final SeedRouterDelegate routerDelegate = watch(seedRouterDelegateProvider);
    final backButtonDispatcher =
        watch(backButtonDispatcherProvider(routerDelegate));
    final SeedRouteInformationParser routeInformationParser =
        watch(routeInformationParserProvider);
    return Consumer(
      builder: (BuildContext context,
          T Function<T>(ProviderBase<Object?, T>) watch, Widget? child) {
        final ThemeData theme = watch(themeProvider).state;
        return MaterialApp.router(
          routerDelegate: routerDelegate,
          routeInformationParser: routeInformationParser,
          debugShowCheckedModeBanner: false,
          backButtonDispatcher: backButtonDispatcher,
          theme: theme,
        );
      },
    );
  }
}

class SomethingWentWrongWidget extends StatelessWidget {
  const SomethingWentWrongWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
