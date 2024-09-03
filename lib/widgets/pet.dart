import 'package:flutter/material.dart';
import 'package:sousocial/utils/launch_link.dart';
import 'package:sousocial/widgets/title.dart';

class PetCard extends StatelessWidget {
  const PetCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri url1 = Uri.parse(
        'https://www.petlove.com.br/dicas/precisa-passear-com-cachorro-todos-os-dias?gad_source=1&gclid=Cj0KCQjwiOy1BhDCARIsADGvQnBEvCUe6iJC9931RZ4u1bCV-D70y5whKYulu66pkrUC1iRuuTmnUl0aAiPjEALw_wcB');

    final Uri url2 = Uri.parse(
        'https://cbn.globoradio.globo.com/media/audio/382785/por-que-e-importante-recolher-fezes-dos-caes-duran.htm');

    final Uri url3 = Uri.parse(
        'https://noticias.cruzeirodosuleducacional.edu.br/voce-sabia-tutores-que-nao-recolhem-as-fezes-dos-pets-na-rua-podem-sofrer-punicoes/');

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TitleText(
                title: 'Passear com seu pet também é responsabilidade'),
          ),
          const SizedBox(height: 8),
          Image.asset(
            'assets/pet.png',
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text('Precisa passear com cachorro todos os dias?'),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    launchLink(url1);
                  },
                  child: const Text('Petlove'),
                ),
                const SizedBox(height: 32),
                const Text(
                    'Por que é importante recolher as fezes dos cães durante os passeios?'),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    launchLink(url2);
                  },
                  child: const Text('Globo'),
                ),
                const SizedBox(height: 32),
                const Text(
                    'Você sabia? Tutores que não recolhem as fezes dos pets na rua podem sofrer punições'),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          launchLink(url3);
                        },
                        child: const Text('Cruzeiro do sul'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
