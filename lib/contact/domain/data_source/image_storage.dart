import 'dart:typed_data';

abstract interface class ImageStorage {
  Future<String> saveImage(Uint8List bytes);

  Future<Uint8List> getImage(String fileName);

  Future<void> deleteImage(String fileName);
}
