// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:contact/contact/data/data_source/image_storage_impl.dart'
    as _i6;
import 'package:contact/contact/data/repository/contact_repository_impl.dart'
    as _i8;
import 'package:contact/contact/domain/data_source/image_picker.dart' as _i4;
import 'package:contact/contact/domain/data_source/image_storage.dart' as _i5;
import 'package:contact/contact/domain/repository/contact_repository.dart'
    as _i7;
import 'package:contact/contact/presentation/contact_list_view_model.dart'
    as _i10;
import 'package:contact/di/app_module.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sqflite/sqflite.dart' as _i9;
import 'package:sqflite_common_ffi/sqflite_ffi.dart' as _i3;

const String _prod = 'prod';
const String _dev = 'dev';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.lazySingletonAsync<_i3.Database>(
      () => appModule.db,
      registerFor: {_prod},
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i3.Database>(
      () => appModule.mockDb,
      registerFor: {_dev},
      preResolve: true,
    );
    gh.lazySingleton<_i4.ImagePicker>(() => appModule.imagePicker);
    gh.factory<_i5.ImageStorage>(() => _i6.ImageStorageImpl());
    gh.factory<_i7.ContactRepository>(() => _i8.ContactRepositoryImpl(
          gh<_i9.Database>(),
          gh<_i5.ImageStorage>(),
        ));
    gh.factory<_i10.ContactListViewModel>(
        () => _i10.ContactListViewModel(gh<_i7.ContactRepository>()));
    return this;
  }
}

class _$AppModule extends _i11.AppModule {}
