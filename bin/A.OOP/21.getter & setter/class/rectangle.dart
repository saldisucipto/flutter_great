class Rectangle {
  int _width = 0;
  int _height = 0;

  // getter
  int get width {
    return _width;
  }

  // setter
  set width(int value) {
    if (value <= 1) {
      value = 2;
    }
    _width = value;
  }

  // height
  int get height {
    return _height;
  }

  // set height
  set height(int value) {
    _height = value;
  }
}
