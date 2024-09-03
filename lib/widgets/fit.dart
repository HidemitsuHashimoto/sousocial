import 'package:flutter/material.dart';
import 'package:sousocial/utils/launch_link.dart';
import 'package:sousocial/widgets/title.dart';

class FitCard extends StatelessWidget {
  const FitCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri url1 = Uri.parse(
        'https://www.terra.com.br/vida-e-estilo/saude/7-exercicios-faceis-de-fazer-para-sair-do-sedentarismo,a0530313ff46ea8bbce32aa54bb32127mr6f5674.html');

    final Uri url2 = Uri.parse('https://www.youtube.com/watch?v=8IUuQXNZFjI');

    final Uri url3 =
        Uri.parse('https://www.youtube.com/watch?app=desktop&v=yFl41hIRa6o');

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TitleText(title: 'Faça exercícios'),
          ),
          const SizedBox(height: 8),
          Image.asset(
            'assets/fit.png',
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Seja saudável',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                const Text('Mantenha sua saúde em dia'),
                const SizedBox(height: 32),
                const Text(
                  'A prática regular de exercícios físicos desempenha um papel fundamental na promoção da saúde e no bem-estar geral.',
                ),
                const SizedBox(height: 28),
                const Text('Leia mais em:'),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    launchLink(url1);
                  },
                  child: const Text('terra.com.br'),
                ),
                const SizedBox(height: 32),
                const Text(
                    'Não sabe quais exercícios fazer? Segue alguns vídeos:'),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          launchLink(url2);
                        },
                        child: const Text('Vídeo 1'),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          launchLink(url3);
                        },
                        child: const Text('Vídeo 2'),
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
