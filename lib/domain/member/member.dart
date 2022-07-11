


import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';

@freezed
class Member with _$Member {
  const Member._();
  factory Member({
    required final String name,
    required final String role,
    required final DateTime startContract,
    required final DateTime? endContract,
  }) = _Member;
}