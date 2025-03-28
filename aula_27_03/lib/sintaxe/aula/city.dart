import 'package:aula_27_03/sintaxe/aula/federal_unit.dart';

class City {
  String _name;
  FederalUnit _federalUnit;

  String get name => _name;

  set name(String name) {
    if (name.trim() == '') throw new Exception('O nome da cidade não pode ser vazio');

    _name = name;
  }

  FederalUnit get federalUnit => _federalUnit;

  set federalUnit(FederalUnit federalUnit) {
    if (federalUnit == null) throw new Exception('O estado não pode ser vazio');

    _federalUnit = federalUnit;
  }

  City({required name, required federalUnit}) : _name = name, _federalUnit = federalUnit;
}
