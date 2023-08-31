import 'dart:developer';

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

  var _state = const ContactListState(
    firstNameError: '이름을 입력해 주세요',
    lastNameError: '성을 입력해 주세요',
    emailError: '이메일을 입력해 주세요',
    phoneNumberError: '전화번호를 입력해 주세요',
  );

  ContactListState get state => _state;

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
      case OnLastNameChanged():
        log('OnLastNameChanged');
      case OnEmailChanged():
        log('OnEmailChanged');
      case OnPhoneNumberChanged():
        log('OnPhoneNumberChanged');
      case OnPhotoPicked():
        log('OnPhotoPicked');
      case OnSaveContact():
        log('SaveContact');
        _contactRepository
            .insertContact(event.contact)
            .then((_) => _updateData());
      case EditContact():
        log('EditContact');
      case DeleteContact():
        log('DeleteContact');
        _contactRepository
            .deleteContact(event.contact.id!.toInt())
            .then((_) => _updateData());
    }
  }
}
