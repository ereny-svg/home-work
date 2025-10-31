
class TaskModel {
  String textOfTask;
  DateTime date;
  bool isDone;

  TaskModel({
    required this.textOfTask,
    required this.date,
    this.isDone = false,
  });

  static void addTask(List<TaskModel> tasks, String text) {
    tasks.add(TaskModel(textOfTask: text, date: DateTime.now()));
  }

  static void removeTask(List<TaskModel> tasks, TaskModel task) {
    tasks.remove(task);
  }
}
