import 'package:flutter/material.dart';
import 'package:sousocial/widgets/title.dart';

class PhonesCard extends StatelessWidget {
  const PhonesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText(title: 'Telefones úteis'),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bombeiros: 193'),
                Text('PM: 190'),
                Text('Defesa Civil Estadual: (11) 2193-8888'),
                Text('Polícia Civil: 197'),
                Text('Disque Denúncia: 181'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
