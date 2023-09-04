import 'package:contact/contact/domain/model/contact.dart';
import 'package:contact/contact/presentation/components/contact_preview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('검사', (tester) async {
    bool isClicked = false;

    await tester.pumpWidget(
      MaterialApp(
        home: ContactPreviewItem(
          contact: const Contact(
            firstName: 'John',
            lastName: 'Doe',
            email: 'test@test.com',
            phoneNumber: '010-1234-5678',
          ),
          onClick: () {
            isClicked = true;
          },
        ),
      ),
    );

    await tester.tap(find.text('John'));
    await tester.pumpAndSettle();

    expect(isClicked, true);
  });
}
