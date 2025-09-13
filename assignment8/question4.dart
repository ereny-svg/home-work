void main() {
  Employee employee1 = Employee(name: 'ereny', salary: 11000);
  employee1.giveRaise(1000);
  print(employee1.salary);
}

class Employee {
  String? name;
  double salary;
  Employee({required this.name, required this.salary}) {}
  void giveRaise(int amount) {
    salary += amount;
  }
}
