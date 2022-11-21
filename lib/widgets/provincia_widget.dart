import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/provincia.dart';

class EmailWidget extends StatelessWidget {
  final Provincia provincia;
  final Function onTap;

  const EmailWidget({
    Key? key,
    required this.provincia,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {},
      onLongPress: () {},
      onTap: () {
        onTap(provincia);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Nombre : ${provincia.name}', style: fromTextStyle),
                  Text('Alcalde: ${provincia.alcalde}', style: subjectTextStyle),
                  Text('Habitantes: ${provincia.habitante}', style: fromTextStyle),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
