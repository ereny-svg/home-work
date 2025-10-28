class BmiCalculator {
  num? height;
  num? weight;
  BmiCalculator({this.height = 174, this.weight = 60});

 num CalculteBmi() {
  return weight! / ((height! / 100) * (height! / 100));
}
}
