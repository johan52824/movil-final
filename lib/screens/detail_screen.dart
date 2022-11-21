import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/provincia.dart';

class DetailScreen extends StatelessWidget {
  final Provincia provincia;

  const DetailScreen({Key? key, required this.provincia}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(provincia.name),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Descripcion: ${provincia.descripcion}',
                  style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              const SizedBox(height: 5.0),
              Text('Parroquias: ${provincia.parroquia}',
                  style: subjectTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              Text('Habitantes: ${provincia.habitante}', style: subjectTextStyle),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text('Alcalde: ${provincia.alcalde} ', style: bodyTextStyle),
              const SizedBox(height: 40.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(184, 255, 16, 3), // background
                  onPrimary: Color.fromARGB(255, 255, 254, 254), // foreground
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Done'),
              )
            ],
          ),
        ));
  }
}
