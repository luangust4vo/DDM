class FederalUnit {
  String _name;
  String _acronym;

  String get name => _name;

  set name(String name) {
    if (name.trim() == '') throw new Exception('O nome do estado não pode ser vazio');

    _name = name;
  }

  String get acronym => _acronym;

  set acronym(String acronym) {
    if (acronym.trim() == '')
      throw new Exception('A sigla do estado não pode ser vazio');

    _name = name;
  }

  FederalUnit({required name, required acronym}) : _name = name, _acronym = acronym;
}
