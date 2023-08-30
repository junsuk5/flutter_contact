import 'dart:typed_data';

abstract interface class ImagePicker {
  Future<Uint8List?> pickImage();
}
