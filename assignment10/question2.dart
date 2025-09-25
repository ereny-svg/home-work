void main() {
  Rectangle x = Rectangle();
  Circle y = Circle();
  Triangle z = Triangle();
  List<shape> shapes = [x, y, z];
  num totalArea = 0;
  num totalCost = 0;
  for (var shape in shapes) {
    totalArea += shape.area();
  }
  print(totalArea);
  if (totalArea <= 50) {
    totalCost = totalArea * 1.50;
  } else if (totalArea <= 150) {
    totalCost = 50 * 1.50;
    totalArea = totalArea - 50;
    totalCost = totalCost + (totalArea * 1.25);
  } else {
    totalCost = (50 * 1.50) + (100 * 1.25);
    totalArea = totalArea - 150;
    totalCost = totalCost + (totalArea * 1.00);
  }
  
  print(totalCost.toStringAsFixed(2));
}

class shape {
  num area() {
    return 0;
  }
}

class Rectangle extends shape {
  int _width = 6;
  int _height = 8;

  set width(int width) {
    if (width >= 1) {
      _width = width;
    } else {
      print("inValid");
    }
  }

  set height(int height) {
    if (height >= 1) {
      _height = height;
    } else {
      print("inValid");
    }
  }

  @override
  num area() {
    return _height * _width;
  }
}

class Circle extends shape {
  num _radius = 5;
  set radius(int radius) {
    if (radius >= 1) {
      _radius = radius;
    } else {
      print("inValid");
    }
  }

  @override
  num area() {
    return (22 / 7) * _radius * _radius;
  }
}

class Triangle extends shape {
  num _basee = 3;
  num _height = 4;

  set basee(int basee) {
    if (basee >= 1) {
      _basee = basee;
    } else {
      print("inValid");
    }
  }

  set height(int height) {
    if (height >= 1) {
      _height = height;
    } else {
      print("inValid");
    }
  }

  @override
  num area() {
    return 0.5 * _basee * _height;
  }
}