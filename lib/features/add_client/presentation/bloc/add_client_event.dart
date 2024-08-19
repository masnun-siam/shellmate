part of 'add_client_bloc.dart';

abstract class AddClientEvent extends Equatable {
  const AddClientEvent();

  @override
  List<Object> get props => [];
}

class IPAddressChanged extends AddClientEvent {
  final String ipAddress;

  const IPAddressChanged(this.ipAddress);
}

class LabelChanged extends AddClientEvent {
  final String label;

  const LabelChanged(this.label);
}

class PortChanged extends AddClientEvent {
  final String port;

  const PortChanged(this.port);
}

class UsernameChanged extends AddClientEvent {
  final String username;

  const UsernameChanged(this.username);
}

class PasswordOrKeyChanged extends AddClientEvent {
  final String passwordOrKey;
  final bool isPassword;

  const PasswordOrKeyChanged({
    required this.passwordOrKey,
    required this.isPassword,
  });
}

class IsPasswordChanged extends AddClientEvent {
  final bool isPassword;

  const IsPasswordChanged(this.isPassword);
}

class ClientAddButtonPressed extends AddClientEvent {
  const ClientAddButtonPressed();
}
