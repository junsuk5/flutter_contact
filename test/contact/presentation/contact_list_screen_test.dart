import 'package:contact/contact/domain/model/contact.dart';
import 'package:contact/contact/presentation/components/contact_list_item.dart';
import 'package:contact/contact/presentation/components/contact_list_ui.dart';
import 'package:contact/contact/presentation/components/contact_photo.dart';
import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:contact/contact/presentation/contact_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('첫 화면', (tester) async {
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
    expect(find.text('최근 추가됨'), findsNothing);
  });

  testWidgets('1개의 연락처', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ContactListUI(
          state: const ContactListState(
            contacts: [
              Contact(
                firstName: 'John',
                lastName: 'Doe',
                email: 'test@test.com',
                phoneNumber: '010-1234-5678',
              ),
            ],
          ),
          onEvent: (_) {},
        ),
      ),
    );

    expect(find.text('연락처 (1)'), findsOneWidget);
    expect(find.text('John'), findsOneWidget);
    expect(find.text('최근 추가됨'), findsOneWidget);
  });

  testWidgets('이벤트 검사', (tester) async {
    ContactListEvent? resultEvent;

    await tester.pumpWidget(
      MaterialApp(
        home: ContactListUI(
          state: const ContactListState(
            recentlyAddedContacts: [
              Contact(
                firstName: 'John',
                lastName: 'Doe',
                email: 'test@test.com',
                phoneNumber: '010-1234-5678',
              ),
            ],
            contacts: [
              Contact(
                firstName: 'John',
                lastName: 'Doe',
                email: 'test@test.com',
                phoneNumber: '010-1234-5678',
              ),
            ],
          ),
          onEvent: (event) {
            resultEvent = event;
          },
        ),
      ),
    );

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    expect(resultEvent, isA<OnAddNewContactClick>());

    await tester.tap(find.byType(ContactListItem).first);
    await tester.pumpAndSettle();

    expect(resultEvent, isA<SelectContact>());

    await tester.tap(find.byType(ContactPhoto).first);
    await tester.pumpAndSettle();

    expect(resultEvent, isA<SelectContact>());
  });
}
