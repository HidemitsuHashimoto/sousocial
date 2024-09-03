import 'package:flutter/material.dart';
import 'package:sousocial/utils/launch_link.dart';
import 'package:sousocial/widgets/title.dart';

class MeditationCard extends StatelessWidget {
  const MeditationCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri url1 = Uri.parse(
        'https://ufob.edu.br/especial-de-quarentena/yoga-e-meditacao/5-canais-de-meditacao-guiada-no-youtube');

    final Uri url2 = Uri.parse(
        'https://youtube.com/playlist?list=PLMI0S_5CL3WlSOg0HIRGWsqfwKl1g1NeJ&si=qVXlM7Bl2USyzozd');

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TitleText(title: 'Meditar acalma a mente'),
          ),
          const SizedBox(height: 8),
          Image.asset(
            'assets/meditation.png',
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Começar a meditar pode ser muito mais fácil do que você imagina',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                const SizedBox(height: 32),
                const Text('5 canais de meditação guiada no Youtube'),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    launchLink(url1);
                  },
                  child: const Text('ufob.edu.br'),
                ),
                const SizedBox(height: 32),
                const Text(
                    'Quer mais recomendações de vídeos? Segue uma playlist de sons naturais pra te ajudar:'),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          launchLink(url2);
                        },
                        child: const Text('Playlist'),
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
