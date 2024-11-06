import 'dart:io';

class route{

  final Prefessorcontrole _prefessorcontrole = ProfessorControler();
  
  Router get rotas (
    final rotas = Router();

    rotas.get('/professores', ProfessoresControle.getall);
    rotas.delete('/professores/delete',professoresControle.delete);

  )


}