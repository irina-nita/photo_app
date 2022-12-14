part of 'actions.dart';

@freezed
class SubmitQuery with _$SubmitQuery {
  const factory SubmitQuery({@Default('travel') String query}) = SubmitQuery$;
}
