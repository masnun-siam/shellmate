part of 'add_client_bloc.dart';

abstract class AddClientState extends Equatable {
  const AddClientState({
    required this.ipAddress,
    required this.label,
    required this.port,
    required this.username,
    required this.passwordOrKey,
    required this.isPassword,
    required this.isLoading,
    required this.failureOrSuccessOption,
  });

  factory AddClientState.initial() => AddClientInitial();

  final String ipAddress;
  final String label;
  final String port;
  final String username;
  final String passwordOrKey;
  final bool isPassword;
  final bool isLoading;
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  List<Object> get props => [
        ipAddress,
        label,
        port,
        username,
        passwordOrKey,
        isPassword,
        isLoading,
        failureOrSuccessOption,
      ];

  AddClientState copyWith({
    String? ipAddress,
    String? label,
    String? port,
    String? username,
    String? passwordOrKey,
    bool? isPassword,
    bool? isLoading,
    Option<Either<Failure, Unit>>? failureOrSuccessOption,
  }) {
    return AddClientData(
      ipAddress: ipAddress ?? this.ipAddress,
      label: label ?? this.label,
      port: port ?? this.port,
      username: username ?? this.username,
      passwordOrKey: passwordOrKey ?? this.passwordOrKey,
      isPassword: isPassword ?? this.isPassword,
      isLoading: isLoading ?? this.isLoading,
      failureOrSuccessOption:
          failureOrSuccessOption ?? this.failureOrSuccessOption,
    );
  }
}

class AddClientInitial extends AddClientState {
  AddClientInitial()
      : super(
          ipAddress: '',
          label: '',
          port: '',
          username: '',
          passwordOrKey: '',
          isPassword: true,
          isLoading: false,
          failureOrSuccessOption: none(),
        );
}

class AddClientData extends AddClientState {
  const AddClientData({
    required super.ipAddress,
    required super.label,
    required super.port,
    required super.username,
    required super.passwordOrKey,
    required super.isPassword,
    required super.isLoading,
    required super.failureOrSuccessOption,
  });
}
