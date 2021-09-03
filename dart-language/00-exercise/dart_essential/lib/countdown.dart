Future<void> main(List<String> arguments) async {
  await countdown(5);

  print('Done');
}

Future<void> countdown(int n) async {
  for (var i = n; i >= 0; i--) {
    await Future.delayed(
      Duration(seconds: 1),
      () => print(i),
    );
  }
}
