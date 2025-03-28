import 'package:aula_27_03/sintaxe/aula/city.dart';

class Person {
  String _name;
  double _weight;
  double _height;
  Function _imc;
  City _city;

  String get name => _name;

  set name(String name) {
    if (name.trim() == '') throw new Exception('O nome não pode ser vazio');

    _name = name;
  }

  double get height => _height;

  set height(double height) {
    if (height < 0) throw new Exception('A altura deve ser maior que 0');

    _height = height;
  }

  double get weight => _weight;

  set weight(double height) {
    if (height < 0) throw new Exception('O peso deve ser maior que 0');

    _height = height;
  }

  City get city => _city;

  set city(City city) {
    if (city == null) throw new Exception('A cidade não pode ser vazia');

    _city = city;
  }

  Person({required name, required height, required weight, required imc, required city})
      : _name = name,
        _height = height,
        _weight = weight,
        _imc = imc,
        _city = city;

  double logIMC() {
    return _imc(_height, _weight);
  }
}
