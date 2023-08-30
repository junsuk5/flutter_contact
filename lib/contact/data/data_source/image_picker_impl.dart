import 'dart:typed_data';

import 'package:contact/contact/domain/data_source/image_picker.dart';
import 'package:image_picker/image_picker.dart' as image_picker;

class ImagePickerImpl implements ImagePicker {
  final _imagePicker = image_picker.ImagePicker();

  @override
  Future<Uint8List?> pickImage() async {
    final image =
        await _imagePicker.pickImage(source: image_picker.ImageSource.gallery);

    if (image == null) {
      return null;
    }

    return image.readAsBytes();
  }
}
