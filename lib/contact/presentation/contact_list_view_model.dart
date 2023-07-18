import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:flutter/material.dart';

class ContactListViewModel with ChangeNotifier {
  void onEvent(ContactListEvent event) {
    switch (event) {
      case OnAddNewContactClick():
        print('OnAddNewContactClick');
      case DismissContact():
        print('DismissContact');
    }
  }
}
