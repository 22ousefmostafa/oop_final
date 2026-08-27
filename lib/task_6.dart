import 'dart:math';

abstract class Shape {
  double getArea();
  double getPerimeter();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double getArea() {
    return pi * radius * radius;
  }

  @override
  double getPerimeter() {
    return 2 * pi * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double getArea() {
    return width * height;
  }

  @override
  double getPerimeter() {
    return 2 * (width + height);
  }
}

class Triangle extends Shape {
  double side1;
  double side2;
  double side3;

  Triangle(this.side1, this.side2, this.side3);

  @override
  double getPerimeter() {
    return side1 + side2 + side3;
  }

  @override
  double getArea() {
    double s = getPerimeter() / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }
}

void main() {
  List<Shape> shapes = [
    Circle(5.0),
    Rectangle(4.0, 6.0),
    Triangle(3.0, 4.0, 5.0),
  ];

  for (var shape in shapes) {
    print('Type: ${shape.runtimeType}');
    print('Area: ${shape.getArea()}');
    print('Perimeter: ${shape.getPerimeter()}');
    print('---');
  }
}