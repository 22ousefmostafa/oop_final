import 'dart:math';

class GeometricObject {
  String color;
  bool filled;

  GeometricObject({this.color = 'white', this.filled = false});

  @override
  String toString() {
    return 'GeometricObject: color = $color, filled = $filled';
  }
}

class Triangle extends GeometricObject {
  double side1;
  double side2;
  double side3;

  Triangle({
    this.side1 = 1.0,
    this.side2 = 1.0,
    this.side3 = 1.0,
    String color = 'white',
    bool filled = false,
  }) : super(color: color, filled: filled);

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  double getArea() {
    double s = getPerimeter() / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  @override
  String toString() {
    return 'Triangle: side1 = $side1, side2 = $side2, side3 = $side3';
  }
}

class Rectangle extends GeometricObject {
  double width;
  double height;

  Rectangle({
    this.width = 1.0,
    this.height = 1.0,
    String color = 'white',
    bool filled = false,
  }) : super(color: color, filled: filled);

  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2 * (width + height);
  }

  @override
  String toString() {
    return 'Rectangle: height = $height, width = $width';
  }
}

void main() {
  GeometricObject geo = GeometricObject(color: 'blue', filled: true);
  print(geo.toString());

  print('---');

  Triangle t1 = Triangle();
  print(t1.toString());
  print('Area: ${t1.getArea()}, Perimeter: ${t1.getPerimeter()}');

  Triangle t2 = Triangle(
    side1: 3.0,
    side2: 4.0,
    side3: 5.0,
    color: 'yellow',
    filled: true,
  );
  print(t2.toString());
  print('Color: ${t2.color}, Filled: ${t2.filled}');
  print('Area: ${t2.getArea()}, Perimeter: ${t2.getPerimeter()}');

  print('---');

  Rectangle r1 = Rectangle();
  print(r1.toString());
  print('Area: ${r1.getArea()}, Perimeter: ${r1.getPerimeter()}');

  Rectangle r2 = Rectangle(
    width: 10.0,
    height: 5.0,
    color: 'red',
    filled: true,
  );
  print(r2.toString());
  print('Color: ${r2.color}, Filled: ${r2.filled}');
  print('Area: ${r2.getArea()}, Perimeter: ${r2.getPerimeter()}');
}