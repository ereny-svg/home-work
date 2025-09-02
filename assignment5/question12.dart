void main() {
  student(firstName: "ereny", lastName: "mahrous", age: 22);
}
void student({required String firstName, required String lastName, int? age}) {
  print("Full Name: $firstName $lastName");
  if (age != null) {
    print("Age: $age");
  }
}