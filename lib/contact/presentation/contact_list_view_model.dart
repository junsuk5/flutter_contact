import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:contact/contact/presentation/contact_list_state.dart';
import 'package:flutter/material.dart';

class ContactListViewModel with ChangeNotifier {
  var _state = ContactListState();

  ContactListState get state => _state;

  void onEvent(ContactListEvent event) {
    switch (event) {
      case OnAddNewContactClick():
        print('OnAddNewContactClick');
      case DismissContact():
        print('DismissContact');
    }
  }
}
