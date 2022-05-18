part of 'destination_cubit.dart';

abstract class DestinationState extends Equatable {
  const DestinationState();

  @override
  List<Object> get props => [];
}

class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {}

class DestinationFail extends DestinationState {
  final String error;

  const DestinationFail(this.error);
  @override
  List<Object> get props => [error];
}

class DestinationSuccess extends DestinationState {
  final List<DestinationModel> destinations;

  const DestinationSuccess({required this.destinations});

  @override
  List<Object> get props => [destinations];
}
