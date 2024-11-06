import 'dart:convert';

class ProfessoresModel {
  int? idProfessores;
  String nomeprofessor;
  String senhaProfessores;

  ProfessoresModel(this.idProfessores,{ required this.nomeprofessor,  required this.senhaProfessores});

  Map<String,dynamic> toMap(){
      return{
        'idProfessores':'idProfessores',
        "nomeprofessor":"nomeprofessor",
        "senhaProfessores":"senhaProfessores",
      };
  }

  factory ProfessoresModel.fromMap(Map<String,dynamic> dados){
     return ProfessoresModel.fromMap({
      "idProfessores":dados["idProfessores"],
      "nomeprofessor":dados['nomeProfessores'],
      'senhaProfessores': dados['senhaProfesores']
     });
  }
  
  String toJson()=> jsonEncode(toMap());

  factory ProfessoresModel.fromJson(Map<String, dynamic> dados){
    return ProfessoresModel.fromMap(jsonDecode(dados as String));
  }

  


}