import 'dart:async';

import 'package:dua_ruqyah/core/base/base_presenter.dart';
import 'package:dua_ruqyah/data/data_sources/dua_local_data_source.dart';
import 'package:dua_ruqyah/data/repositories/category_repository_impl.dart';
import 'package:dua_ruqyah/data/repositories/dua_repository_impl.dart';
import 'package:dua_ruqyah/data/services/dua_database/dua_database_service.dart';
import 'package:dua_ruqyah/data/services/error_message_handler_impl.dart';
import 'package:dua_ruqyah/domain/repositories/category_repository.dart';
import 'package:dua_ruqyah/domain/repositories/dua_repository.dart';
import 'package:dua_ruqyah/domain/services/error_message_handler.dart';
import 'package:dua_ruqyah/domain/use_case/get_category_use_case.dart';
import 'package:dua_ruqyah/domain/use_case/get_dua_repository.dart';
import 'package:dua_ruqyah/domain/use_case/get_sub_category_use_case.dart';
import 'package:dua_ruqyah/presentation/home/presenter/home_presenter.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked_themes/stacked_themes.dart';


// Implementation Note:
//
// The app utilizes the **Service Locator Pattern** to manage dependencies.
//
// The Service Locator Pattern is a design pattern that improves modularity and
// maintainability in our codebase. By decoupling the code from direct dependency
// references, it allows for easier substitution or addition of dependencies in
// the future.
//
// To understand the Service Locator Pattern in more detail, you can refer to
// the following resource: https://stackify.com/service-locator-pattern/.
//
// This pattern simplifies the process of replacing or adding dependencies.
// Instead of modifying every object that relies on a particular dependency, we
// only need to update the service locator itself. This centralization reduces
// code changes and minimizes potential errors.
final GetIt _serviceLocator = GetIt.instance;

// This code implements a wrapper function around the `get` function from the
// `get_it` package. The purpose of this wrapper is to provide a simplified and
// centralized way of retrieving registered instances of classes.
//
// By using this wrapper instead of directly calling the get function, we avoid
// tight coupling to the specific service locator implementation, which can lead
// to vendor lock-in. This abstraction allows for flexibility in choosing a
// different service locator plugin in the future if needed.
//
// The wrapper function encapsulates the complexity of the service locator and
// provides a cleaner and more readable interface for retrieving dependencies
// throughout the codebase.

/// Provides a way to retrieve an instance of a class registered
/// with the service locator.
T locate<T extends Object>() => _serviceLocator.get<T>();



///TODO need to work on this line
// void dislocate<T extends BasePresenter>() => unloadPresenterManually<T>();

class ServiceLocator {
  ServiceLocator._();

  /// Sets up the whole dependency injection system by calling various setup
  /// methods in a certain order.
  ///
  /// Also provides an optional flag to only start services and skip the other
  /// setup steps.
  ///
  /// Ensures that all necessary dependencies are initialized before starting
  /// the application.
  static Future<void> setUp({bool startOnlyService = false}) async {
    final ServiceLocator locator = ServiceLocator._();
    await locator._setUpServices();
    if (startOnlyService) return;
    await locator._setUpDataSources();
    await locator._setUpRepositories();
    await locator._setUpUseCase();
    await locator._setUpPresenters();
    await locator._setUpOthers();
  }

  Future<void> _setUpServices() async {
    await ThemeManager.initialise();
    _serviceLocator
      ..registerLazySingleton(DuaDatabase.new)
      ..registerLazySingleton<ErrorMessageHandler>(ErrorMessageHandlerImpl.new);
    //   ..registerLazySingleton(LocalCacheService.new)
    //   ..registerSingleton<AwesomeNotifications>(AwesomeNotifications())
    //   ..registerFactory(ArticleApiService.new)
    //   ..registerLazySingleton(PickOrSave.new)
    //   ..registerFactory<FileService>(() => FileServicePresentable(locate()))
    //   ..registerLazySingleton<NotificationService>(
    //     () => NotificationServicePresentable(locate(), locate()),
    //   )
    //   ..registerLazySingleton(() => ReviewAskCountService(locate()))
    //   ..registerLazySingleton(() => InAppReview.instance)
    //   ..registerLazySingleton(BackendAsAService.new)
    //   ..registerLazySingleton(ThemeService.getInstance);

    // final NotificationService notificationService = locate();
    // await ThemeManager.initialise();
    // await LocalCacheService.setUp();
    // await notificationService.setUp();
    // await _setUpFirebaseServices();
  }

  Future<void> _setUpFirebaseServices() async {
    // await catchFutureOrVoid(() async {
    //   final FirebaseApp? firebaseApp = await catchAndReturnFuture(() async {
    //     return Firebase.initializeApp(
    //       options: DefaultFirebaseOptions.currentPlatform,
    //     );
    //   });
    //   if (firebaseApp == null) return;
    //   if (kDebugMode) return;

    //   FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    //   PlatformDispatcher.instance.onError = (error, stack) {
    //     FirebaseCrashlytics.instance.recordError(
    //       error,
    //       stack,
    //       fatal: true,
    //       printDetails: true,
    //     );
    //     return true;
    //   };
    // });
  }

  Future<void> _setUpDataSources() async {
    _serviceLocator
      ..registerLazySingleton(
        () => DuaLocalDataSource(locate()));
    //   )
    //   ..registerFactory(() => SearchLocalDataSource(locate()))
    //   ..registerFactory(() => InfoLocalDataSource(locate(), locate()))
    //   ..registerFactory(() => UserDataRemoteDataSource(locate()))
    //   ..registerFactory(() => ArticleDataSource(locate()))
    //   ..registerFactory(() => InfoRemoteDataSource(locate(), locate()))
    //   ..registerFactory(() => UserDataLocalDataSource(locate(), locate(),locate()));
  }

  Future<void> _setUpRepositories() async {
    _serviceLocator
      ..registerLazySingleton<CategoryRepository>( () => CategoryRepositoryImpl(locate()))
      ..registerLazySingleton<DuaRepository>( () => DuaRepositoryImpl(locate()));
    //   ..registerLazySingleton<NotificationRepository>(
    //     () => NotificationRepositoryImpl(
    //       locate(),
    //       locate(),
    //       locate(),
    //       locate(),
    //     ),
    //   )
    //   ..registerLazySingleton<ChapterRepository>(
    //     () => ChapterRepositoryImpl(locate()),
    //   )
    //   ..registerSingleton<SettingsRepository>(
    //     SettingsRepositoryImpl(
    //       locate(),
    //       locate(),
    //     ),
    //   );
 
  }

  Future<void> _setUpPresenters() async {
    _serviceLocator
      ..registerFactory(
        () => loadPresenter(
          HomePresenter(
            locate(),
            locate(),
            locate()
         
          ),
        ),
      );
  }

  Future<void> _setUpOthers() async {
    // _serviceLocator
    //   ..registerFactory(ItemScrollController.new)
    //   ..registerFactory(TextEditingController.new);
  }

  Future<void> _setUpUseCase() async {
    _serviceLocator
      ..registerFactory(() => GetCategoryUseCase(locate(), locate()))
      ..registerFactory(() => GetDuaUseCase(locate(), locate()))
      ..registerFactory(() => GetSubCategoryUseCase(locate(), locate()));

     
  
  }
}
