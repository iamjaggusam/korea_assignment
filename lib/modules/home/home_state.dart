part of 'home_bloc.dart';

@freezed
class HomeState extends Equatable with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default(HomeResponseModel()) HomeResponseModel homeData,
  }) = _HomeState;

  @override
  List<Object?> get props => [status, homeData];
}

enum HomeStatus {
  initial,
  loading,
  success,
  error,
}
