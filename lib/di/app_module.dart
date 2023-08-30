import 'package:contact/contact/data/data_source/image_picker_impl.dart';
import 'package:contact/contact/domain/data_source/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@module
abstract class AppModule {
  @preResolve
  Future<Database> get db => openDatabase(
        'contact_db',
        version: 1,
        onCreate: (db, version) async {
          await db.execute(
              'CREATE TABLE contact (id INTEGER PRIMARY KEY AUTOINCREMENT, firstName TEXT NOT NULL, lastName TEXT NOT NULL, email TEXT NOT NULL, phoneNumber TEXT NOT NULL, createdAt INTEGER NOT NULL, imagePath TEXT)');
        },
      );

  @lazySingleton
  ImagePicker get imagePicker => ImagePickerImpl();
}
