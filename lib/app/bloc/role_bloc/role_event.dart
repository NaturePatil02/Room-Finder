import "package:equatable/equatable.dart";

abstract class RoleEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SelectRoleEvent extends RoleEvent {
  // 1 for Owner, 2 for Finder
  final int roleId;
  SelectRoleEvent(this.roleId);

  @override
  List<Object> get props => [roleId];
}
