// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  int? get id => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get photoBytes => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call(
      {int? id,
      @Uint8ListConverter() Uint8List? photoBytes,
      String firstName,
      String lastName,
      String email,
      String phoneNumber});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photoBytes = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      photoBytes: freezed == photoBytes
          ? _value.photoBytes
          : photoBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$_ContactCopyWith(
          _$_Contact value, $Res Function(_$_Contact) then) =
      __$$_ContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @Uint8ListConverter() Uint8List? photoBytes,
      String firstName,
      String lastName,
      String email,
      String phoneNumber});
}

/// @nodoc
class __$$_ContactCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$_Contact>
    implements _$$_ContactCopyWith<$Res> {
  __$$_ContactCopyWithImpl(_$_Contact _value, $Res Function(_$_Contact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photoBytes = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$_Contact(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      photoBytes: freezed == photoBytes
          ? _value.photoBytes
          : photoBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Contact with DiagnosticableTreeMixin implements _Contact {
  const _$_Contact(
      {this.id,
      @Uint8ListConverter() this.photoBytes,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.phoneNumber});

  factory _$_Contact.fromJson(Map<String, dynamic> json) =>
      _$$_ContactFromJson(json);

  @override
  final int? id;
  @override
  @Uint8ListConverter()
  final Uint8List? photoBytes;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Contact(id: $id, photoBytes: $photoBytes, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Contact'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('photoBytes', photoBytes))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contact &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.photoBytes, photoBytes) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(photoBytes),
      firstName,
      lastName,
      email,
      phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      __$$_ContactCopyWithImpl<_$_Contact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {final int? id,
      @Uint8ListConverter() final Uint8List? photoBytes,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String phoneNumber}) = _$_Contact;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$_Contact.fromJson;

  @override
  int? get id;
  @override
  @Uint8ListConverter()
  Uint8List? get photoBytes;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      throw _privateConstructorUsedError;
}
