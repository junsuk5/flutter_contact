import 'dart:developer';

import 'package:contact/contact/domain/model/contact.dart';
import 'package:contact/contact/domain/repository/contact_repository.dart';
import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:contact/contact/presentation/contact_list_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContactListViewModel with ChangeNotifier {
  final ContactRepository _contactRepository;

  ContactListViewModel(this._contactRepository) {
    _updateData();
  }

  var _state = ContactListState(
    contacts: contacts,
    firstNameError: '이름을 입력해 주세요',
    lastNameError: '성을 입력해 주세요',
    emailError: '이메일을 입력해 주세요',
    phoneNumberError: '전화번호를 입력해 주세요',
  );

  ContactListState get state => _state;

  Contact? _newContact;

  void _updateData() async {
    _state = _state.copyWith(
      contacts: await _contactRepository.getContacts(),
      recentlyAddedContacts: await _contactRepository.getRecentContacts(20),
    );
    notifyListeners();
  }

  void onEvent(ContactListEvent event) {
    switch (event) {
      case OnAddNewContactClick():
        log('OnAddNewContactClick');
      case DismissContact():
        log('DismissContact');
      case SelectContact():
        log('SelectContact');
      case OnAddPhotoClicked():
        log('OnAddPhotoClicked');
      case OnFirstNameChanged():
        log('OnFirstNameChanged');
        _newContact = _newContact?.copyWith(
          firstName: event.firstName,
        );
        notifyListeners();
      case OnLastNameChanged():
        log('OnLastNameChanged');
        _newContact = _newContact?.copyWith(
          lastName: event.lastName,
        );
      case OnEmailChanged():
        log('OnEmailChanged');
        _newContact = _newContact?.copyWith(
          email: event.email,
        );
      case OnPhoneNumberChanged():
        log('OnPhoneNumberChanged');
        _newContact = _newContact?.copyWith(
          phoneNumber: event.phoneNumber,
        );
      case OnPhotoPicked():
        log('OnPhotoPicked');
      case SaveContact():
        log('SaveContact');
        _state = state.copyWith(
          firstNameError: '이름을 입력해주세요.',
        );
        notifyListeners();
      case EditContact():
        log('EditContact');
      case DeleteContact():
        log('DeleteContact');
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
