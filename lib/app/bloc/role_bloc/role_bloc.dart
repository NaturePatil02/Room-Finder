import 'package:bloc/bloc.dart';
import 'package:room_finder/app/bloc/role_bloc/role_event.dart';
import 'package:room_finder/app/bloc/role_bloc/role_state.dart';



class RoleBloc extends Bloc<RoleEvent, RoleState> {
  RoleBloc() : super(RoleInitialState()) {
    on<RoleEvent>((event, emit) {
      
    });
  }
}
