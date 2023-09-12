import 'package:contact/contact/data/data_source/image_picker_impl.dart';
import 'package:contact/contact/domain/data_source/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

@module
abstract class AppModule {
  @preResolve
  @lazySingleton
  @prod
  Future<Database> get db => openDatabase(
        'contact_db',
        version: 1,
        onCreate: (db, version) async {
          await db.execute(
              'CREATE TABLE contact (id INTEGER PRIMARY KEY AUTOINCREMENT, firstName TEXT NOT NULL, lastName TEXT NOT NULL, email TEXT NOT NULL, phoneNumber TEXT NOT NULL, createdAt INTEGER NOT NULL, imagePath TEXT)');
        },
      );

  @preResolve
  @lazySingleton
  @dev
  Future<Database> get mockDb => databaseFactoryFfi.openDatabase(
        inMemoryDatabasePath,
        options: OpenDatabaseOptions(
          version: 1,
          onCreate: (db, version) async {
            await db.execute(
                'CREATE TABLE contact (id INTEGER PRIMARY KEY AUTOINCREMENT, firstName TEXT NOT NULL, lastName TEXT NOT NULL, email TEXT NOT NULL, phoneNumber TEXT NOT NULL, createdAt INTEGER NOT NULL, imagePath TEXT)');
          },
        ),
      );

  @lazySingleton
  ImagePicker get imagePicker => ImagePickerImpl();
}
