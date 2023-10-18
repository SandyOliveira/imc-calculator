import 'package:my_calc_imc_dart/models/person.dart';
import 'package:my_calc_imc_dart/services/calculator_imc.dart';

import 'package:test/test.dart';

void main() {
  group('Calcular IMC', () {
    var dataPerson = {
      {'nome': 'Pessoa 1', 'peso': 70, 'altura': 1.75}: 22.86,
      {'nome': 'Pessoa 2', 'peso': 65, 'altura': 1.68}: 23.03,
      {'nome': 'Pessoa 3', 'peso': 80, 'altura': 1.80}: 24.69,
      {'nome': 'Pessoa 4', 'peso': 85, 'altura': 1.70}: 29.41,
      {'nome': 'Pessoa 5', 'peso': 60, 'altura': 1.65}: 22.04,
      {'nome': 'Pessoa 6', 'peso': 55, 'altura': 1.52}: 55.0,
      {'nome': 'Pessoa 7', 'peso': 95, 'altura': 1.80}: 29.32,
    };

    dataPerson.forEach((values, expected) {
      test('Entrada: $values Esperado: $expected', () {
        Person person = Person(
            values['nome'].toString(),
            double.parse(values['peso'].toString()),
            double.parse(values['altura'].toString()));

        CalculatorImc calculator = CalculatorImc();
        expect(calculator.calculator(person), expected);
      });
    });
  });
}
