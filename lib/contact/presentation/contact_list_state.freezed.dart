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
  List<Contact> get contacts => throw _privateConstructorUsedError;
  List<Contact> get recentlyAddedContacts => throw _privateConstructorUsedError;
  Contact? get selectedContact => throw _privateConstructorUsedError;
  bool get isAddContactSheetOpen => throw _privateConstructorUsedError;
  bool get isSelectedContactSheetOpen => throw _privateConstructorUsedError;
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
      {List<Contact> contacts,
      List<Contact> recentlyAddedContacts,
      Contact? selectedContact,
      bool isAddContactSheetOpen,
      bool isSelectedContactSheetOpen,
      String? firstNameError,
      String? lastNameError,
      String? emailError,
      String? phoneNumberError});

  $ContactCopyWith<$Res>? get selectedContact;
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
    Object? contacts = null,
    Object? recentlyAddedContacts = null,
    Object? selectedContact = freezed,
    Object? isAddContactSheetOpen = null,
    Object? isSelectedContactSheetOpen = null,
    Object? firstNameError = freezed,
    Object? lastNameError = freezed,
    Object? emailError = freezed,
    Object? phoneNumberError = freezed,
  }) {
    return _then(_value.copyWith(
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      recentlyAddedContacts: null == recentlyAddedContacts
          ? _value.recentlyAddedContacts
          : recentlyAddedContacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      selectedContact: freezed == selectedContact
          ? _value.selectedContact
          : selectedContact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      isAddContactSheetOpen: null == isAddContactSheetOpen
          ? _value.isAddContactSheetOpen
          : isAddContactSheetOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectedContactSheetOpen: null == isSelectedContactSheetOpen
          ? _value.isSelectedContactSheetOpen
          : isSelectedContactSheetOpen // ignore: cast_nullable_to_non_nullable
              as bool,
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

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get selectedContact {
    if (_value.selectedContact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.selectedContact!, (value) {
      return _then(_value.copyWith(selectedContact: value) as $Val);
    });
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
      {List<Contact> contacts,
      List<Contact> recentlyAddedContacts,
      Contact? selectedContact,
      bool isAddContactSheetOpen,
      bool isSelectedContactSheetOpen,
      String? firstNameError,
      String? lastNameError,
      String? emailError,
      String? phoneNumberError});

  @override
  $ContactCopyWith<$Res>? get selectedContact;
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
    Object? contacts = null,
    Object? recentlyAddedContacts = null,
    Object? selectedContact = freezed,
    Object? isAddContactSheetOpen = null,
    Object? isSelectedContactSheetOpen = null,
    Object? firstNameError = freezed,
    Object? lastNameError = freezed,
    Object? emailError = freezed,
    Object? phoneNumberError = freezed,
  }) {
    return _then(_$_ContactListState(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      recentlyAddedContacts: null == recentlyAddedContacts
          ? _value._recentlyAddedContacts
          : recentlyAddedContacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      selectedContact: freezed == selectedContact
          ? _value.selectedContact
          : selectedContact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      isAddContactSheetOpen: null == isAddContactSheetOpen
          ? _value.isAddContactSheetOpen
          : isAddContactSheetOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectedContactSheetOpen: null == isSelectedContactSheetOpen
          ? _value.isSelectedContactSheetOpen
          : isSelectedContactSheetOpen // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {final List<Contact> contacts = const [],
      final List<Contact> recentlyAddedContacts = const [],
      this.selectedContact,
      this.isAddContactSheetOpen = false,
      this.isSelectedContactSheetOpen = false,
      this.firstNameError,
      this.lastNameError,
      this.emailError,
      this.phoneNumberError})
      : _contacts = contacts,
        _recentlyAddedContacts = recentlyAddedContacts;

  factory _$_ContactListState.fromJson(Map<String, dynamic> json) =>
      _$$_ContactListStateFromJson(json);

  final List<Contact> _contacts;
  @override
  @JsonKey()
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  final List<Contact> _recentlyAddedContacts;
  @override
  @JsonKey()
  List<Contact> get recentlyAddedContacts {
    if (_recentlyAddedContacts is EqualUnmodifiableListView)
      return _recentlyAddedContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentlyAddedContacts);
  }

  @override
  final Contact? selectedContact;
  @override
  @JsonKey()
  final bool isAddContactSheetOpen;
  @override
  @JsonKey()
  final bool isSelectedContactSheetOpen;
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
    return 'ContactListState(contacts: $contacts, recentlyAddedContacts: $recentlyAddedContacts, selectedContact: $selectedContact, isAddContactSheetOpen: $isAddContactSheetOpen, isSelectedContactSheetOpen: $isSelectedContactSheetOpen, firstNameError: $firstNameError, lastNameError: $lastNameError, emailError: $emailError, phoneNumberError: $phoneNumberError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactListState &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality()
                .equals(other._recentlyAddedContacts, _recentlyAddedContacts) &&
            (identical(other.selectedContact, selectedContact) ||
                other.selectedContact == selectedContact) &&
            (identical(other.isAddContactSheetOpen, isAddContactSheetOpen) ||
                other.isAddContactSheetOpen == isAddContactSheetOpen) &&
            (identical(other.isSelectedContactSheetOpen,
                    isSelectedContactSheetOpen) ||
                other.isSelectedContactSheetOpen ==
                    isSelectedContactSheetOpen) &&
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
      runtimeType,
      const DeepCollectionEquality().hash(_contacts),
      const DeepCollectionEquality().hash(_recentlyAddedContacts),
      selectedContact,
      isAddContactSheetOpen,
      isSelectedContactSheetOpen,
      firstNameError,
      lastNameError,
      emailError,
      phoneNumberError);

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
      {final List<Contact> contacts,
      final List<Contact> recentlyAddedContacts,
      final Contact? selectedContact,
      final bool isAddContactSheetOpen,
      final bool isSelectedContactSheetOpen,
      final String? firstNameError,
      final String? lastNameError,
      final String? emailError,
      final String? phoneNumberError}) = _$_ContactListState;

  factory _ContactListState.fromJson(Map<String, dynamic> json) =
      _$_ContactListState.fromJson;

  @override
  List<Contact> get contacts;
  @override
  List<Contact> get recentlyAddedContacts;
  @override
  Contact? get selectedContact;
  @override
  bool get isAddContactSheetOpen;
  @override
  bool get isSelectedContactSheetOpen;
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
