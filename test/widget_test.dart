import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_contador/main.dart';

void main() {
  testWidgets('Contador: sumar, restar, reiniciar y cambiar el texto',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    void expectValue(String value) {
      final text = tester.widget<Text>(
        find.byKey(const ValueKey('counterValue')),
      );
      expect(text.data, value);
    }

    expectValue('0');
    expect(find.text('Clicks'), findsOneWidget);

    await tester.tap(find.byTooltip('Sumar uno'));
    await tester.pump();
    expectValue('1');
    expect(find.text('Click'), findsOneWidget);

    await tester.tap(find.byTooltip('Sumar uno'));
    await tester.pump();
    expectValue('2');
    expect(find.text('Clicks'), findsOneWidget);

    await tester.tap(find.byTooltip('Restar uno'));
    await tester.pump();
    expectValue('1');

    await tester.tap(find.byTooltip('Reiniciar contador'));
    await tester.pump();
    expectValue('0');

    await tester.tap(find.byTooltip('Restar uno'));
    await tester.pump();
    expectValue('-1');
    expect(find.text('Clicks'), findsOneWidget);
  });
}
