part of 'weather_bloc.dart';

@immutable
sealed class WeatherBlocEvent extends Equatable {
  WeatherBlocEvent();

  @override
  List<Object> get props => [];
}

class FetchWeather extends WeatherBlocEvent {
  final Position position;

  FetchWeather(this.position);

  @override
  List<Object> get props => [position];
}
