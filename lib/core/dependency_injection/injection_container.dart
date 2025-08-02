import 'package:get_it/get_it.dart';
import 'package:sprint3_activity/core/dependency_injection/repository_registry.dart';
import 'package:sprint3_activity/core/dependency_injection/service_registry.dart';
import 'package:sprint3_activity/core/dependency_injection/use_case_registry.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //! ----- services -----
  final ServicesRegistry servicesRegistry = ServicesRegistry();
  servicesRegistry.registerUserServices();
  servicesRegistry.registerPostServices();

  //! ----- repositories -----
  final RepositoryRegistry repositoryRegistry = RepositoryRegistry();
  repositoryRegistry.registerUserRepository();
  repositoryRegistry.registerPostRepository();

  //! ----- use cases -----
  final UseCaseRegistry useCaseRegistry = UseCaseRegistry();
  useCaseRegistry.registerUserPostUseCases();

  //! ----- blocs -----
  
}
