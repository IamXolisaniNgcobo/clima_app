import 'dart:io';

void main() {
  PerfomTasks();
}

void PerfomTasks() async {
  task1();
  //task2();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration secondsWait = Duration(seconds: 5);
  late String result;

  await Future.delayed(secondsWait, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}
