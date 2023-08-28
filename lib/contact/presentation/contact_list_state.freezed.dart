// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactListState _$ContactListStateFromJson(Map<String, dynamic> json) {
  return _ContactListState.fromJson(json);
}

/// @nodoc
mixin _$ContactListState {
  String? get firstNameError => throw _privateConstructorUsedError;
  String? get lastNameError => throw _privateConstructorUsedError;
  String? get emailError => throw _privateConstructorUsedError;
  String? get phoneNumberError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactListStateCopyWith<ContactListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListStateCopyWith<$Res> {
  factory $ContactListStateCopyWith(
          ContactListState value, $Res Function(ContactListState) then) =
      _$ContactListStateCopyWithImpl<$Res, ContactListState>;
  @useResult
  $Res call(
      {String? firstNameError,
      String? lastNameError,
      String? emailError,
      String? phoneNumberError});
}

/// @nodoc
class _$ContactListStateCopyWithImpl<$Res, $Val extends ContactListState>
    implements $ContactListStateCopyWith<$Res> {
  _$ContactListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstNameError = freezed,
    Object? lastNameError = freezed,
    Object? emailError = freezed,
    Object? phoneNumberError = freezed,
  }) {
    return _then(_value.copyWith(
      firstNameError: freezed == firstNameError
          ? _value.firstNameError
          : firstNameError // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameError: freezed == lastNameError
          ? _value.lastNameError
          : lastNameError // ignore: cast_nullable_to_non_nullable
              as String?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberError: freezed == phoneNumberError
          ? _value.phoneNumberError
          : phoneNumberError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactListStateCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$_ContactListStateCopyWith(
          _$_ContactListState value, $Res Function(_$_ContactListState) then) =
      __$$_ContactListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstNameError,
      String? lastNameError,
      String? emailError,
      String? phoneNumberError});
}

/// @nodoc
class __$$_ContactListStateCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$_ContactListState>
    implements _$$_ContactListStateCopyWith<$Res> {
  __$$_ContactListStateCopyWithImpl(
      _$_ContactListState _value, $Res Function(_$_ContactListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstNameError = freezed,
    Object? lastNameError = freezed,
    Object? emailError = freezed,
    Object? phoneNumberError = freezed,
  }) {
    return _then(_$_ContactListState(
      firstNameError: freezed == firstNameError
          ? _value.firstNameError
          : firstNameError // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameError: freezed == lastNameError
          ? _value.lastNameError
          : lastNameError // ignore: cast_nullable_to_non_nullable
              as String?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberError: freezed == phoneNumberError
          ? _value.phoneNumberError
          : phoneNumberError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactListState implements _ContactListState {
  const _$_ContactListState(
      {this.firstNameError,
      this.lastNameError,
      this.emailError,
      this.phoneNumberError});

  factory _$_ContactListState.fromJson(Map<String, dynamic> json) =>
      _$$_ContactListStateFromJson(json);

  @override
  final String? firstNameError;
  @override
  final String? lastNameError;
  @override
  final String? emailError;
  @override
  final String? phoneNumberError;

  @override
  String toString() {
    return 'ContactListState(firstNameError: $firstNameError, lastNameError: $lastNameError, emailError: $emailError, phoneNumberError: $phoneNumberError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactListState &&
            (identical(other.firstNameError, firstNameError) ||
                other.firstNameError == firstNameError) &&
            (identical(other.lastNameError, lastNameError) ||
                other.lastNameError == lastNameError) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.phoneNumberError, phoneNumberError) ||
                other.phoneNumberError == phoneNumberError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstNameError, lastNameError, emailError, phoneNumberError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactListStateCopyWith<_$_ContactListState> get copyWith =>
      __$$_ContactListStateCopyWithImpl<_$_ContactListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactListStateToJson(
      this,
    );
  }
}

abstract class _ContactListState implements ContactListState {
  const factory _ContactListState(
      {final String? firstNameError,
      final String? lastNameError,
      final String? emailError,
      final String? phoneNumberError}) = _$_ContactListState;

  factory _ContactListState.fromJson(Map<String, dynamic> json) =
      _$_ContactListState.fromJson;

  @override
  String? get firstNameError;
  @override
  String? get lastNameError;
  @override
  String? get emailError;
  @override
  String? get phoneNumberError;
  @override
  @JsonKey(ignore: true)
  _$$_ContactListStateCopyWith<_$_ContactListState> get copyWith =>
      throw _privateConstructorUsedError;
}
