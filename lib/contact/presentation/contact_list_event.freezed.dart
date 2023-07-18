// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAddNewContactClick,
    required TResult Function() dismissContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAddNewContactClick,
    TResult? Function()? dismissContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAddNewContactClick,
    TResult Function()? dismissContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAddNewContactClick value) onAddNewContactClick,
    required TResult Function(DismissContact value) dismissContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAddNewContactClick value)? onAddNewContactClick,
    TResult? Function(DismissContact value)? dismissContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAddNewContactClick value)? onAddNewContactClick,
    TResult Function(DismissContact value)? dismissContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListEventCopyWith<$Res> {
  factory $ContactListEventCopyWith(
          ContactListEvent value, $Res Function(ContactListEvent) then) =
      _$ContactListEventCopyWithImpl<$Res, ContactListEvent>;
}

/// @nodoc
class _$ContactListEventCopyWithImpl<$Res, $Val extends ContactListEvent>
    implements $ContactListEventCopyWith<$Res> {
  _$ContactListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnAddNewContactClickCopyWith<$Res> {
  factory _$$OnAddNewContactClickCopyWith(_$OnAddNewContactClick value,
          $Res Function(_$OnAddNewContactClick) then) =
      __$$OnAddNewContactClickCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnAddNewContactClickCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res, _$OnAddNewContactClick>
    implements _$$OnAddNewContactClickCopyWith<$Res> {
  __$$OnAddNewContactClickCopyWithImpl(_$OnAddNewContactClick _value,
      $Res Function(_$OnAddNewContactClick) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnAddNewContactClick implements OnAddNewContactClick {
  const _$OnAddNewContactClick();

  @override
  String toString() {
    return 'ContactListEvent.onAddNewContactClick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnAddNewContactClick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAddNewContactClick,
    required TResult Function() dismissContact,
  }) {
    return onAddNewContactClick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAddNewContactClick,
    TResult? Function()? dismissContact,
  }) {
    return onAddNewContactClick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAddNewContactClick,
    TResult Function()? dismissContact,
    required TResult orElse(),
  }) {
    if (onAddNewContactClick != null) {
      return onAddNewContactClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAddNewContactClick value) onAddNewContactClick,
    required TResult Function(DismissContact value) dismissContact,
  }) {
    return onAddNewContactClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAddNewContactClick value)? onAddNewContactClick,
    TResult? Function(DismissContact value)? dismissContact,
  }) {
    return onAddNewContactClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAddNewContactClick value)? onAddNewContactClick,
    TResult Function(DismissContact value)? dismissContact,
    required TResult orElse(),
  }) {
    if (onAddNewContactClick != null) {
      return onAddNewContactClick(this);
    }
    return orElse();
  }
}

abstract class OnAddNewContactClick implements ContactListEvent {
  const factory OnAddNewContactClick() = _$OnAddNewContactClick;
}

/// @nodoc
abstract class _$$DismissContactCopyWith<$Res> {
  factory _$$DismissContactCopyWith(
          _$DismissContact value, $Res Function(_$DismissContact) then) =
      __$$DismissContactCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DismissContactCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res, _$DismissContact>
    implements _$$DismissContactCopyWith<$Res> {
  __$$DismissContactCopyWithImpl(
      _$DismissContact _value, $Res Function(_$DismissContact) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DismissContact implements DismissContact {
  const _$DismissContact();

  @override
  String toString() {
    return 'ContactListEvent.dismissContact()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DismissContact);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAddNewContactClick,
    required TResult Function() dismissContact,
  }) {
    return dismissContact();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAddNewContactClick,
    TResult? Function()? dismissContact,
  }) {
    return dismissContact?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAddNewContactClick,
    TResult Function()? dismissContact,
    required TResult orElse(),
  }) {
    if (dismissContact != null) {
      return dismissContact();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAddNewContactClick value) onAddNewContactClick,
    required TResult Function(DismissContact value) dismissContact,
  }) {
    return dismissContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAddNewContactClick value)? onAddNewContactClick,
    TResult? Function(DismissContact value)? dismissContact,
  }) {
    return dismissContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAddNewContactClick value)? onAddNewContactClick,
    TResult Function(DismissContact value)? dismissContact,
    required TResult orElse(),
  }) {
    if (dismissContact != null) {
      return dismissContact(this);
    }
    return orElse();
  }
}

abstract class DismissContact implements ContactListEvent {
  const factory DismissContact() = _$DismissContact;
}
