import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_integrado/main.dart';
import 'package:projeto_integrado/screens/screens.dart'; // Certifique-se de que o caminho está correto

void main() {
  testWidgets('HomeScreen deve ser exibido corretamente',
      (WidgetTester tester) async {
    await tester.pumpWidget(const ProjetoIntegrado());

    await tester.pumpAndSettle();

    expect(find.text('EVENTOS E CURSOS DE TECNOLOGIA EM SÃO JOSÉ DOS CAMPOS'),
        findsOneWidget);

    expect(find.byType(HomeScreen), findsOneWidget);

    expect(find.text('Curso Lógica de Programação (CEPHAS)'), findsOneWidget);
  });
}
