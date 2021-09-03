import 'dart:async';
import 'dart:convert';
import 'dart:io';

int counter = 0;

void main(List<String> arguments) {
  // Sync - Async

  // File System
  var dir = Directory.systemTemp.createTempSync();
  print(dir.path);

  if (dir.existsSync()) {
    print('Removing ${dir.path}');
  } else {
    print('Could not find ${dir.path}');
  }

  var files = dir.listSync(recursive: true);
  print('Entries in list: ${files.length}');

  files.forEach((FileSystemEntity file) {
    var fileStat = file.statSync();
    print('Path: ${file.path}');
    print('Type: ${fileStat.type}');
    print('Changed: ${fileStat.changed}');
    print('Modified: ${fileStat.modified}');
    print('Accessed: ${fileStat.accessed}');
    print('Mode: ${fileStat.mode}');
    print('Size: ${fileStat.size}');
    print('');
  });

  // File Access
  var currentDir = Directory.current;
  print(currentDir.path);

  var file = File(currentDir.path + '/myFile.txt');
  writeFile(file);
  readFile(file);
  file.deleteSync(recursive: true);
}

void writeFile(File file) {
  var randomAccessFile = file.openSync(mode: FileMode.write);
  randomAccessFile.writeStringSync('Hello Dart Language');
  randomAccessFile.flushSync();
  randomAccessFile.closeSync();
}

void readFile(File file) {
  if (!file.existsSync()) {
    print('File is not found.');
    return;
  }

  print('Reading String...');
  print(file.readAsStringSync());

  print('Reading Byte...');
  print(file.readAsBytesSync());

  // OS
  print('OS: ${Platform.operatingSystem} - ${Platform.version}');
  print('Path: ${Platform.script.path}');
  print('Env:');
  Platform.environment.keys.forEach((key) {
    print('$key - ${Platform.environment[key]}');
  });

  // Process
  // List all files in a directory - Linux specific
  //Process.run('ls', ['-la']).then((ProcessResult result) => {
    // print(' ' + result.stdout);
    // print('Exit code: ${result.exitCode}');
  //});

  //Process.start('cat', []).then((Process process) => {
    // Transform output.
    // process.stdout.transform(Utf8Decoder()).listen((data) => print(data));

    // Send to the process.
    // process.stdin.writeln('Dart Language');

    // Stop process.
    // Process.killPid(process.pid);

    // Get the exit code.
    //process.exitCode.then((int code) => {
    //  print('Exit code: $code');

    //  // Exit.
    //  exit(0);
    //});
  //});

  // Timer and Callback.
  var duration = Duration(seconds: 1);
  Timer.periodic(duration, timeout);

  print('Started: ${getTime()}');

  // Future
  var pathTest = Directory.current.path + '/test.txt';
  print('Appending to $pathTest');

  var fileTest = File(pathTest);
  var future = fileTest.open(mode: FileMode.append);
  future.then((RandomAccessFile randomAccessFile) => randomAccessFile.writeString('Future')
      .then((value) => print('File have been appended'))
      .catchError(() => print('An error occured'))
      .whenComplete(() => randomAccessFile.close())
  );

  print('The end');

  // ZIP - UNZIP

  // TCP - UDP
}

void timeout(Timer timer) {
  print('Timeout: ${getTime()}');

  counter++;
  if (counter > 5) timer.cancel();
}

String getTime() {
  return DateTime.now().toString();
}
