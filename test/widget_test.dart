// Widget test de voda — reemplaza el boilerplate del counter (que fallaba:
// la app no tiene counter ni botón '+').

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:vodafone/main.dart';

void main() {
  testWidgets('muestra el home con titulo Vodafone', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Vodafone'), findsOneWidget);
  });

  testWidgets('el drawer se abre con sus items', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // El drawer no está en pantalla hasta abrirlo
    expect(find.text('Drawer Header'), findsNothing);

    // Scaffold + AppBar → el botón de menú abre el drawer
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();

    expect(find.text('Drawer Header'), findsOneWidget);
    expect(find.text('Item 1'), findsOneWidget);
    expect(find.text('Item 2'), findsOneWidget);
  });

  testWidgets('el arbol muestra tres iconos de video', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(Arbol), findsOneWidget);
    expect(find.byIcon(Icons.ondemand_video), findsNWidgets(3));
    expect(find.text('One'), findsNWidgets(3));
  });
}
