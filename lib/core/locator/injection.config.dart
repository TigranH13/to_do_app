// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/application/authBloc/auth_bloc.dart' as _i15;
import '../../features/auth/application/qrBloc/qr_sign_in_bloc.dart' as _i9;
import '../../features/auth/core/credentianals.dart' as _i3;
import '../../features/auth/data/auth_impl.dart' as _i5;
import '../../features/auth/data/source/qr_sign_in_source.dart' as _i6;
import '../../features/auth/data/source/qr_sign_in_source_impl.dart' as _i7;
import '../../features/auth/domain/i_auth_repository.dart' as _i4;
import '../../features/tasks/application/bloc/todo_bloc.dart' as _i14;
import '../../features/tasks/data/datasources/task_local_data_source_impl.dart'
    as _i11;
import '../../features/tasks/data/datasources/task_remote_data_source_iml.dart'
    as _i10;
import '../../features/tasks/data/task_impl.dart' as _i13;
import '../../features/tasks/domain/i_tasks_repository.dart' as _i12;
import '../notifications/notify_service.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.Credentials>(() => _i3.Credentials());
    gh.factory<_i4.IAuthRepository>(() => _i5.AuthRepositoryImpl());
    gh.factory<_i6.IQrSignInSource>(() => _i7.QrSignInSourceImpl());
    gh.factory<_i8.NotificationService>(() => _i8.NotificationService());
    gh.factory<_i9.QrSignInBloc>(() => _i9.QrSignInBloc(
          autoSignInWithQrImpl: gh<_i6.IQrSignInSource>(),
          authRepository: gh<_i4.IAuthRepository>(),
        ));
    gh.factory<_i10.RemoteDataSourceImpl>(() => _i10.RemoteDataSourceImpl());
    gh.factory<_i11.TaskLocalDataSourceImpl>(
        () => _i11.TaskLocalDataSourceImpl());
    gh.factory<_i12.ITasksRepository>(() => _i13.TaskRepositoryImpl(
          localDataSource: gh<_i11.TaskLocalDataSourceImpl>(),
          remoteDataSource: gh<_i10.RemoteDataSourceImpl>(),
        ));
    gh.factory<_i14.TodoBloc>(
        () => _i14.TodoBloc(taskRepositoryImpl: gh<_i12.ITasksRepository>()));
    gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(
          qrSignInSourceImpl: gh<_i6.IQrSignInSource>(),
          notificationService: gh<_i8.NotificationService>(),
          tasksRepository: gh<_i12.ITasksRepository>(),
          authRepository: gh<_i4.IAuthRepository>(),
          credentials: gh<_i3.Credentials>(),
        ));
    return this;
  }
}
