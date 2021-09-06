import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/app/route/route_information_parser.dart';
import 'package:todo_app/app/route/router_delegate.dart';

class MainSplash extends StatelessWidget {
  const MainSplash({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //comment
    return Scaffold(
      body: Center(
        child: Consumer(builder: (context, watch, child) {
          final AsyncValue<bool> splashNotify = watch(spashNotifyProvider);
          return splashNotify.when(data: (bool value) {
            scheduleMicrotask(() {
              final pageManager = context.read(seedRouterDelegateProvider);
              if (value) {
                pageManager.addPage(const PageConfiguration.home());
              }
            });
            return Container();
          }, error: (Object error, StackTrace? stackTrace) {
            return const Text(
              'Something went wrong',
              style: TextStyle(
                color: Colors.red,
              ),
            );
          }, loading: () {
            return const CircularProgressIndicator();
          });
        }),
      ),
    );
  }
}

final spashNotifyProvider = FutureProvider<bool>((ref) async {
  final stepOne = ref.watch(stepOneProvider);
  await stepOne.fetch();
  return true;
});

final stepOneProvider = Provider((ref) => StepOne());

class StepOne {
  Future<void> fetch() async {
    return;
  }
}
