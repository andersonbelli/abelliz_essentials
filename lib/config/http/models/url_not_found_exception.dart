import 'base_exception.dart';

class UrlNotFoundException extends BaseException {
  final String? error;

  UrlNotFoundException({this.error}) : super(error ?? 'Url could not be found');
}
