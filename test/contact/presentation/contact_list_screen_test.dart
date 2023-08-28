import 'package:contact/contact/presentation/contact_list_screen.dart';
import 'package:contact/contact/presentation/contact_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('UI Test', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ContactListUI(
          state: const ContactListState(),
          onEvent: (_) {},
        ),
      ),
    );

    expect(find.text('연락처 (0)'), findsOneWidget);
    expect(find.byIcon(Icons.person_add), findsOneWidget);
  });
}
