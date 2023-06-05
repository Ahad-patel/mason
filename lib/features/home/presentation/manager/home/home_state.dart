part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}


// state with values
class HomeSuccessState extends HomeState {
  final String message;
  const HomeSuccessState({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

class HomeFailureState extends HomeState {
  final String message;
  const HomeFailureState({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

