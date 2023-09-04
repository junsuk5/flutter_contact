import 'dart:io';
import 'dart:typed_data';

import 'package:contact/contact/domain/data_source/image_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

@Injectable(as: ImageStorage)
class ImageStorageImpl implements ImageStorage {
  final uuid = const Uuid();

  @override
  Future<String> saveImage(Uint8List bytes) async {
    final directory = await getApplicationSupportDirectory();
    final fileName = '${directory.path}/${uuid.v4()}.jpg';
    final file = File(fileName);
    await file.writeAsBytes(bytes);
    return fileName;
  }

  @override
  Future<Uint8List?> getImage(String fileName) async {
    final file = File(fileName);
    return file.readAsBytes();
  }

  @override
  Future<void> deleteImage(String fileName) async {
    final file = File(fileName);
    await file.delete();
  }
}
