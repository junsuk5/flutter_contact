import 'package:contact/contact/domain/contact.dart';

sealed class ContactListEvent {}

class OnAddNewContactClick implements ContactListEvent {}

class DismissContact implements ContactListEvent {}

class SelectContact implements ContactListEvent {
  final Contact contact;

  SelectContact(this.contact);
}
