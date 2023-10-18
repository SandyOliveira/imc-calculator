import 'package:my_calc_imc_dart/models/person.dart';
import 'package:my_calc_imc_dart/services/calculator_imc.dart';

import 'package:my_calc_imc_dart/utils/console_utils.dart';

void start() {
  print('Calcular IMC');

  String name = ConsoleUtils.readString(message: 'Nome:');
  double weight = ConsoleUtils.readDouble(message: 'Peso (kg):');
  double height = ConsoleUtils.readDouble(message: 'Altura (metros):');
  Person person = Person(name, weight, height);

  CalculatorImc calculator = CalculatorImc();
  calculator.validateWeight(person);
}
