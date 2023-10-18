import 'package:my_calc_imc_dart/exceptions/invalid_height_exception.dart';
import 'package:my_calc_imc_dart/exceptions/invalid_name_exception.dart';
import 'package:my_calc_imc_dart/exceptions/invalid_weight_exception.dart';

class Person {
  String _name = '';
  double _weight = 0.0;
  double _height = 0.0;

  Person(String name, double weight, double height) {
    setName(name);
    setWeight(weight);
    setHeight(height);
  }

  /// Setter for _name
  void setName(String name) {
    if (name.trim() == '') {
      throw InvalidNameException;
    }

    _name = name;
  }

  /// Getter for _name
  String getName() {
    return _name;
  }

  /// Setter for _weight
  void setWeight(double weight) {
    if (weight <= 0.0) {
      throw InvalidWeightException;
    }

    _weight = weight;
  }

  /// Getter for _weight
  double getWeight() {
    return _weight;
  }

  /// Setter for _height
  void setHeight(double height) {
    if (height <= 0.0) {
      throw InvalidHeighException;
    }

    _height = height;
  }

  /// Getter for _height
  double getHeight() {
    return _height;
  }

  @override
  String toString() {
    return {'Nome': _name, 'Largura': _weight, 'Altura': _height}.toString();
  }
}
