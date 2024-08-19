import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:shellmate/core/core.dart';

part 'add_client_event.dart';
part 'add_client_state.dart';

class AddClientBloc extends Bloc<AddClientEvent, AddClientState> {
  AddClientBloc() : super(AddClientInitial()) {
    on<IPAddressChanged>(_onIPAddressChanged);
    on<LabelChanged>(_onLabelChanged);
    on<PortChanged>(_onPortChanged);
    on<UsernameChanged>(_onUsernameChanged);
    on<PasswordOrKeyChanged>(_onPasswordOrKeyChanged);
    on<IsPasswordChanged>(_onIsPasswordChanged);
    on<ClientAddButtonPressed>(_onAddClient);
  }

  FutureOr<void> _onIPAddressChanged(
      IPAddressChanged event, Emitter<AddClientState> emit) {
    emit(state.copyWith(
      ipAddress: event.ipAddress,
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onLabelChanged(
      LabelChanged event, Emitter<AddClientState> emit) {
    emit(state.copyWith(
      label: event.label,
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onPortChanged(
      PortChanged event, Emitter<AddClientState> emit) {
    emit(state.copyWith(
      port: event.port,
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onUsernameChanged(
      UsernameChanged event, Emitter<AddClientState> emit) {
    emit(state.copyWith(
      username: event.username,
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onPasswordOrKeyChanged(
      PasswordOrKeyChanged event, Emitter<AddClientState> emit) {
    emit(state.copyWith(
      passwordOrKey: event.passwordOrKey,
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onIsPasswordChanged(
      IsPasswordChanged event, Emitter<AddClientState> emit) {
    emit(state.copyWith(
      isPassword: event.isPassword,
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onAddClient(
      ClientAddButtonPressed event, Emitter<AddClientState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      failureOrSuccessOption: none(),
    ));


  }
}
