
import 'package:shelf/shelf.dart';

class Prefessorcontrole {
  Future<Response> addfuncionario(Request Request)async {
    try {
      await ProfessoresService.addProfesores(ProfessoresModel.fromJson((await Request.readAsString())));
      return Jsonviewrender({'mensage':'deu certp'});
    } catch (e) {
        return jsonView.renderErro('erro':e.toString());
    }
  }
}