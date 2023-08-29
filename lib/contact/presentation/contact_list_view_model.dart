import 'package:contact/contact/domain/contact.dart';
import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:contact/contact/presentation/contact_list_state.dart';
import 'package:flutter/material.dart';

class ContactListViewModel with ChangeNotifier {
  var _state = ContactListState(
    contacts: contacts,
  );

  ContactListState get state => _state;

  Contact? _newContact;

  void onEvent(ContactListEvent event) {
    switch (event) {
      case OnAddNewContactClick():
        print('OnAddNewContactClick');
      case DismissContact():
        print('DismissContact');
      case SelectContact():
        print('SelectContact');
    }
  }
}

final contacts = List.generate(
  50,
  (index) => Contact(
    id: index,
    firstName: 'firstName$index',
    lastName: 'lastName$index',
    email: 'test@test$index.com',
    phoneNumber: '123456789',
    // photoBytes: null,
  ),
);
