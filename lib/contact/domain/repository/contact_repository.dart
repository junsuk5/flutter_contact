import 'package:contact/contact/domain/model/contact.dart';

abstract interface class ContactRepository {
  Future<List<Contact>> getContacts();

  Future<List<Contact>> getRecentContacts(int amount);

  Future<void> insertContact(Contact contact);

  Future<void> deleteContact(int id);
}
