import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Método para abrir a URL
  Future<void> _openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir o site $url';
    }
  }

  // Método para criar o ListTile
  Widget _buildEventTile({
    required String title,
    required String subtitle,
    required String url,
  }) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () => _openUrl(url),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EVENTOS E CURSOS DE TECNOLOGIA EM SÃO JOSÉ DOS CAMPOS',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          _buildEventTile(
            title: 'Parque Tecnológico - Innovation Week 2024',
            subtitle: '27-29 de Agosto',
            url: 'https://innovationweeksjc.com.br/',
          ),
          _buildEventTile(
            title: 'ITA(Instituto de Tecnologia AeroEspacial) - Encita 2024',
            subtitle: '16 de Setembro',
            url: 'https://paic.ita.br/evento/encita-2024/',
          ),
          _buildEventTile(
            title: 'Curso Lógica de Programação (CEPHAS)',
            subtitle: 'ATÉ 9 De Setembro',
            url: 'https://servicos.sjc.sp.gov.br/qualifica/inscricao.aspx',
          ),
          _buildEventTile(
            title: 'Cursos Gratuitos on-line (Eu Capacito)',
            subtitle: '-',
            url:
                'https://www.eucapacito.com.br/?gad_source=1&gclid=Cj0KCQjw_sq2BhCUARIsAIVqmQutfAatpZcNiRE9LhB0f_YnQxvTrN6itOOxkz5ky-IPZ6Hmco6tOFEaAhEDEALw_wcB',
          ),
          _buildEventTile(
            title: 'IV Encontro da Pós-graduação do ICT.SJC',
            subtitle: '10 de Outubro',
            url: 'https://eventos.ict.unesp.br/encontroposgrad/',
          ),
          _buildEventTile(
            title: 'Visita ao (INPE)',
            subtitle: 'Aberto ao Público',
            url:
                'https://www.gov.br/inpe/pt-br/acesso-a-informacao/institucional/visita',
          ),
        ],
      ),
    );
  }
}
