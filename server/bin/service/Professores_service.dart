import 'server/bin/DB/database.dart';
import 'server/bin/model/profesores_model.dart';
class ProfessoresService {
  BD banco = BD();
  

  Future<void> addProfesores()async{
    final conncetion =  await banco.connect();
    await conncetion.query("INSERT INTO Professores(idProfessor,nomeProfessor, senhaProfessor) VALUES (idProfessor,nomeProfessor,senhaProfessor)",);
    conncetion.close();
  }

  Future<ProfessoresModel> deletProfessor(ProfessoresModel Professor)async{
    final connection =  await banco.connect();
    var oneuser = await connection.query("DELETE FROM Professores  WHERE idfuncionarios = ${Professor.idProfessores}");
    connection.close();
    final getone = oneuser.map((user)=> ProfessoresModel.fromMap(user.fields)).first;
    return getone;

  }

  Future<List<ProfessoresModel>> getall() async{
    final connection = await banco.connect();
    var get = await connection.query('SELECT *FROM PROFESSORES ');
    connection.close();
    final getprof = get.map((user)=>ProfessoresModel.fromMap(user.fields)).toList();
    return getprof;

  }










}