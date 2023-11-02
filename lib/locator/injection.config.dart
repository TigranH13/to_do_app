// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/auth/application/auth_bloc.dart' as _i11;
import '../features/auth/data/auth_impl.dart' as _i10;
import '../features/auth/domain/i_auth_repository.dart' as _i9;
import '../features/auto_sign_in_with_qr/application/bloc/auto_sign_in_bloc.dart'
    as _i8;
import '../features/auto_sign_in_with_qr/data/sign_in_with_qr_impl.dart' as _i3;
import '../features/tasks/application/bloc/todo_bloc.dart' as _i7;
import '../features/tasks/data/datasources/task_local_data_source_impl.dart'
    as _i5;
import '../features/tasks/data/datasources/task_remote_data_source_iml.dart'
    as _i4;
import '../features/tasks/data/repository/task_impl.dart' as _i6;

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
    gh.factory<_i3.AutoSignInWithQrImpl>(() => _i3.AutoSignInWithQrImpl());
    gh.factory<_i4.RemoteDataSourceImpl>(() => _i4.RemoteDataSourceImpl());
    gh.factory<_i5.TaskLocalDataSourceImpl>(
        () => _i5.TaskLocalDataSourceImpl());
    gh.factory<_i6.TaskRepositoryImpl>(() => _i6.TaskRepositoryImpl(
          localDataSource: gh<_i5.TaskLocalDataSourceImpl>(),
          remoteDataSource: gh<_i4.RemoteDataSourceImpl>(),
        ));
    gh.factory<_i7.TodoBloc>(
        () => _i7.TodoBloc(taskRepositoryImpl: gh<_i6.TaskRepositoryImpl>()));
    gh.factory<_i8.AutoSignInBloc>(() => _i8.AutoSignInBloc(
        autoSignInWithQrImpl: gh<_i3.AutoSignInWithQrImpl>()));
    gh.factory<_i9.IAuthRepository>(() => _i10.AuthRepositoryImpl(
          autoSignInWithQrImpl: gh<_i3.AutoSignInWithQrImpl>(),
          localDataSource: gh<_i5.TaskLocalDataSourceImpl>(),
          taskRepositoryImpl: gh<_i6.TaskRepositoryImpl>(),
        ));
    gh.factory<_i11.AuthBloc>(
        () => _i11.AuthBloc(authRepository: gh<_i9.IAuthRepository>()));
    return this;
  }
}
