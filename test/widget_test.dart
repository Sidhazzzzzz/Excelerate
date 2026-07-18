// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:excelerate/main.dart';

void main() {
  testWidgets('Home page shows recommended courses', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();

    expect(find.textContaining('Welcome Back'), findsOneWidget);
    expect(find.text('Recommended Courses'), findsOneWidget);
    expect(find.text('Intro to Programming'), findsOneWidget);
  });
}
