
import 'package:mysql1/mysql1.dart';

class BD{
  MySqlConnection? bancoDeDados;

  ConnectionSettings configureBD = ConnectionSettings(port: 3306, host: '127.0.0.1',db: 'mydb',user: 'root');

  Future<MySqlConnection> connect()async{
    try {
      bancoDeDados??= await MySqlConnection.connect(configureBD);
      print('conexão bem succedida');
    } catch (e) {
      bancoDeDados = null;
        print('conexão falho');
    }finally{
      // ignore: control_flow_in_finally
      return connect();
    }
  }

  Future<void> close()async{
    try {
      if (bancoDeDados!=null) {
        await bancoDeDados!.close();
        print('conexão fechada');
      }
    } catch (e) {
      print('erro ao fechar ${e.toString()}');
    }finally{
      bancoDeDados = null;
    }
  }
}