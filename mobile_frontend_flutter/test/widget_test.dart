import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_frontend_flutter/main.dart';

void main() {
  testWidgets('App loads with four tabs', (WidgetTester tester) async {
    await tester.pumpWidget(const GameBoostApp());
    await tester.pumpAndSettle();

    expect(find.text('Game Boost Pro'), findsOneWidget);
    expect(find.text('Dashboard'), findsOneWidget);
    expect(find.text('Monitor'), findsOneWidget);
    expect(find.text('Modes'), findsOneWidget);
    expect(find.text('Notifications'), findsOneWidget);
  });

  testWidgets('Dashboard contains Boost Now button', (WidgetTester tester) async {
    await tester.pumpWidget(const GameBoostApp());
    await tester.pump();

    expect(find.text('Boost Now'), findsOneWidget);
    expect(find.byIcon(Icons.rocket_launch), findsOneWidget);
  });
}
