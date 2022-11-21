import 'package:cantonesdemanabi_erickmera_examen1/model/provincia.dart';

import 'provincia.dart';

class Backend {
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _provincias = [
    Provincia(
        id: 1,
        name: 'Montecristi',
        descripcion:
            ' INGENIERO WILVER WASHINGTON ARTEAGA PALACIOS ALCALDE DEL GOBIERNO AUTÓNOMO DESCENTRALIZADO MUNICIPAL DEL CANTON MONTECRISTI.',
        alcalde: 'Washiton Arteaga ',
        parroquia: '4 Parroquias ',
        habitante: '30000'),
    Provincia(
        id: 2,
        name: 'Manta',
        descripcion:
            'EL ABOGADO AGUSTIN INTRIAGO ES EL ALCALDE DE MANTA EN LA ACTUALIDAD, ES UNO DE LOS ALCALDE MAS QUERIDO DE LA HISTORIA.',
        alcalde: 'Agustin Intriago',
        parroquia: '3 Parroquias',
        habitante: '30020'),
    Provincia(
        id: 3,
        name: 'Portoviejo',
        descripcion:
            'ESTE ALCALDE SE HA ECHO RECONOCER POR LAS OBRAS QUE A REALIZADO Y TAMBIEN SE A POSTULADO PARA PREFECTO DE MANABI.',
        alcalde: 'Agustín Casanova Cedeño​​',
        parroquia: '2 Parroquias',
        habitante: '187324'),
    Provincia(
        id: 4,
        name: 'Jaramijo',
        descripcion:
            'El actual alcalde se ha propuesto Combatir la desnutrición y la malnutrición y promover prácticas de vida saludable en niñas y niños. Mandato priorizado 3. Prevenir el embarazo adolescente.',
        alcalde: 'Simetrio Calderón',
        parroquia: '2 Parroquias',
        habitante: '17643'),
    Provincia(
        id: 5,
        name: 'Jipijapa',
        descripcion:
            'Teodoro Andrade Almeida- Alcalde del Cantón Jipijapa expresando textualmente de que remite la aprobación de los estudios, diseño, plano',
        alcalde: 'Luis Gencon Cedeño',
        parroquia: '3 Parroquias',
        habitante: '145553'),
  ];

  List<Provincia> getProvincias() {
    return _provincias;
  }
}
