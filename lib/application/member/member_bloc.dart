
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:valendar/domain/member/member.dart';
import 'package:valendar/infrastructure/member/member_dto.dart';

part 'member_event.dart';
part 'member_state.dart';
part 'member_bloc.freezed.dart';


@injectable
class MemberBloc extends Bloc<MemberEvent, MemberState> with HydratedMixin{
  MemberBloc() : super(MemberState.initial()) {
    on<_AddMember>((event, emit) {
      emit(state.copyWith(
        members: [...state.members, event.member]
      ));
    });
    on<_DeleteMember>((event, emit) {

    });
    on<_UpdateMember>((event, emit) {

    });
  }
  
  @override
  MemberState? fromJson(Map<String, dynamic> json) {
    final List<dynamic> members = json['members'];
    return MemberState(members: members.map(
      (e) => MemberDTO.fromJson(e)
      .toDomain())
      .toList()
    );
  }
  
  @override
  Map<String, dynamic>? toJson(MemberState state) {
    return {
      'members': state.members
        .map((member) => MemberDTO.fromDomain(member).toJson())
        .toList()
    };
  }
}
