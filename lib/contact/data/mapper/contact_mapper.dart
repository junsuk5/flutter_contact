import 'package:contact/contact/data/entity/contact_entity.dart';
import 'package:contact/contact/domain/data_source/image_storage.dart';
import 'package:contact/contact/domain/model/contact.dart';

extension ToContact on ContactEntity {
  Future<Contact> toContact(ImageStorage imageStorage) async {
    final photoBytes = switch (imagePath) {
      null => null,
      _ => await imageStorage.getImage(imagePath!),
    };

    return Contact(
      id: id!,
      firstName: firstName!,
      lastName: lastName!,
      email: email!,
      phoneNumber: phoneNumber!,
      photoBytes: photoBytes,
    );
  }
}
