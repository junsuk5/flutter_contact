import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    int? id,
    @Uint8ListConverter() Uint8List? photoBytes,
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
  }) = _Contact;

  factory Contact.fromJson(Map<String, Object?> json) =>
      _$ContactFromJson(json);
}

class Uint8ListConverter implements JsonConverter<Uint8List?, List<int>?> {
  const Uint8ListConverter();

  @override
  Uint8List? fromJson(List<int>? json) {
    return json == null ? null : Uint8List.fromList(json);
  }

  @override
  List<int>? toJson(Uint8List? object) {
    return object?.toList();
  }
}
