class Task {
  late String title;
  late bool isComplete = false;

  Task({required this.title});

  void toggleState() {
    isComplete = !isComplete;
  }
}
