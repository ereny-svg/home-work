void main() {
  City city1 = City(name: 'Cairo', population: 10000000);
  City city2 = City(name: 'Paris', population: 2200000);

  print(city1.name);
  print(city1.population);

  print(city2.name);
  print(city2.population);
}

class City {
  String? name;
  int? population;
  City({required this.name, required this.population}) {}
}
