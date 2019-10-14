import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final String cityName;
  final double tempreture;
  Weather({this.cityName, this.tempreture});
  @override
  List<Object> get props => [cityName, tempreture];
}
