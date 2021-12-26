import 'package:packer/config/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;

@InjectableInit()
void configureInjection(String environment) {
  $initGetIt(getIt, environment: environment);
}
