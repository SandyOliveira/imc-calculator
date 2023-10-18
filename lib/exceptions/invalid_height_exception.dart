class InvalidHeighException implements Exception {
  String error() => 'O valor informado para altura inválido';

  @override
  String toString() {
    return 'InvalidHeighException: ${error()}';
  }
}
