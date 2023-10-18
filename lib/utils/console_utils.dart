import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String readString({String message = ''}) {
    if (message.trim() != '') {
      print(message);
    }

    var line = stdin.readLineSync(encoding: utf8);
    return line ?? '';
  }

  static double readDouble({String message = ''}) {
    do {
      try {
        var line = readString(message: message);

        // Tratar número no formato 0.000,00
        if (line.contains(',')) {
          line = line.replaceAll('.', '');
          line = line.replaceAll(',', '.');
        }

        return double.parse(line);
      } catch (e) {
        print('Número inválido.');
      }
    } while (true);
  }
}
