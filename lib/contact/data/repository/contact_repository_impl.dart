import 'package:contact/contact/data/entity/contact_entity.dart';
import 'package:contact/contact/data/mapper/contact_mapper.dart';
import 'package:contact/contact/domain/data_source/image_storage.dart';
import 'package:contact/contact/domain/model/contact.dart';
import 'package:contact/contact/domain/repository/contact_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@Injectable(as: ContactRepository)
class ContactRepositoryImpl implements ContactRepository {
  final Database _db;
  final ImageStorage _imageStorage;

  ContactRepositoryImpl(
    this._db,
    this._imageStorage,
  );

  @override
  Future<void> insertContact(Contact contact) async {
    // 이미지 저장
    final imagePath = switch (contact.photoBytes) {
      null => null,
      [...] => await _imageStorage.saveImage(contact.photoBytes!),
    };

    await _db.insert(
      'contact',
      ContactEntity(
        id: contact.id,
        firstName: contact.firstName,
        lastName: contact.lastName,
        email: contact.email,
        phoneNumber: contact.phoneNumber,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        imagePath: imagePath,
      ).toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<void> deleteContact(int id) async {
    await _db.delete(
      'contact',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  @override
  Future<List<Contact>> getContacts() async {
    final contacts = await _db.query('contact');

    final contactList = <Contact>[];

    for (var e in contacts) {
      final contact = await ContactEntity.fromJson(e).toContact(_imageStorage);
      contactList.add(contact);
    }

    return contactList;
  }

  @override
  Future<List<Contact>> getRecentContacts(int amount) async {
    return _db.rawQuery('''
      SELECT * FROM contact ORDER BY createdAt DESC LIMIT $amount
    ''').then((value) async {
      final contactList = <Contact>[];

      for (var e in value) {
        final contact =
            await ContactEntity.fromJson(e).toContact(_imageStorage);
        contactList.add(contact);
      }

      return contactList;
    });
  }
}
