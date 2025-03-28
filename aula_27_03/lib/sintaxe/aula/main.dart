import 'package:aula_27_03/sintaxe/aula/city.dart';
import 'package:aula_27_03/sintaxe/aula/federal_unit.dart';

import 'person.dart';
import 'dart:io';

void main() {
  print('Nome: ');
  var name = stdin.readLineSync()!;

  print('Altura: ');
  var height = double.parse(stdin.readLineSync()!);

  print('Peso: ');
  var weight = double.parse(stdin.readLineSync()!);

  print('Estado: ');
  var federalUnitName = stdin.readLineSync()!;

  print('Sigla do estado: ');
  var federalUnitAcronym = stdin.readLineSync()!;

  print('Cidade: ');
  var cityName = stdin.readLineSync()!;

  var person = Person(
      name: name,
      height: height,
      weight: weight,
      city: City(
        federalUnit: FederalUnit(name: federalUnitName, acronym: federalUnitAcronym), 
        name: cityName
        ),
      imc: (double height, double weight) =>
          (weight / (height * height)));

  print(
      'Nome: ${person.name}; Altura: ${person.height}; Peso: ${person.weight}; IMC: ${person.logIMC()}; Cidade: ${person.city.name}; Estado: ${person.city.federalUnit.name}; Sigla: ${person.city.federalUnit.acronym}');
}
