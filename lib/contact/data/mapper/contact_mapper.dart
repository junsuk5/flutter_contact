import 'dart:typed_data';

import 'package:contact/contact/data/entity/contact_entity.dart';
import 'package:contact/contact/domain/data_source/image_storage.dart';
import 'package:contact/contact/domain/model/contact.dart';

extension ToContact on ContactEntity {
  Future<Contact> toContact(ImageStorage imageStorage) async {
    Uint8List? photoBytes;
    try {
      photoBytes = switch (imagePath) {
        null => null,
        _ => await imageStorage.getImage(imagePath!),
      };
    } catch (e) {
      photoBytes = null;
    }

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
