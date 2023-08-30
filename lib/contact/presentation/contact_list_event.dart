import 'dart:typed_data';

import 'package:contact/contact/domain/model/contact.dart';

sealed class ContactListEvent {}

class OnAddNewContactClick implements ContactListEvent {}

class DismissContact implements ContactListEvent {}

class OnFirstNameChanged implements ContactListEvent {
  final String firstName;

  OnFirstNameChanged(this.firstName);
}

class OnLastNameChanged implements ContactListEvent {
  final String lastName;

  OnLastNameChanged(this.lastName);
}

class OnEmailChanged implements ContactListEvent {
  final String email;

  OnEmailChanged(this.email);
}

class OnPhoneNumberChanged implements ContactListEvent {
  final String phoneNumber;

  OnPhoneNumberChanged(this.phoneNumber);
}

class OnPhotoPicked implements ContactListEvent {
  final Uint8List bytes;

  OnPhotoPicked(this.bytes);
}

class OnAddPhotoClicked implements ContactListEvent {}

class SaveContact implements ContactListEvent {}

class SelectContact implements ContactListEvent {
  final Contact contact;

  SelectContact(this.contact);
}

class EditContact implements ContactListEvent {
  final Contact contact;

  EditContact(this.contact);
}

class DeleteContact implements ContactListEvent {}
