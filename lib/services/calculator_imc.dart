import 'package:my_calc_imc_dart/models/person.dart';

class CalculatorImc {
  double calculator(Person person) {
    double imc = person.getWeight() / (person.getHeight() * person.getHeight());
    return double.parse(imc.toStringAsFixed(2));
  }

  void validateWeight(Person person) {
    double imc = calculator(person);

    if (imc < 18.5) {
      print("Abaixo do peso");
    } else if (imc >= 18.5 && imc < 24.9) {
      print("Peso normal");
    } else if (imc >= 25 && imc < 29.9) {
      print("Sobrepeso");
    } else if (imc >= 30 && imc < 34.9) {
      print("Obesidade grau 1");
    } else if (imc >= 35 && imc < 39.9) {
      print("Obesidade grau 2");
    } else {
      print("Obesidade grau 3");
    }
  }
}
