// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../auth/application/auth_bloc.dart' as _i9;
import '../auth/data/auth_impl.dart' as _i8;
import '../auth/domain/i_auth_repository.dart' as _i7;
import '../tasks/application/bloc/todo_bloc.dart' as _i6;
import '../tasks/data/datasources/task_local_data_source_impl.dart' as _i3;
import '../tasks/data/datasources/task_remote_data_source_iml.dart' as _i4;
import '../tasks/data/repository/task_impl.dart' as _i5;

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
    gh.factory<_i3.LocalDataSource>(() => _i3.LocalDataSource());
    gh.factory<_i4.RemoteDataSourceImpl>(() => _i4.RemoteDataSourceImpl());
    gh.factory<_i5.TaskRepositoryImpl>(() => _i5.TaskRepositoryImpl(
          localDataSource: gh<_i3.LocalDataSource>(),
          remoteDataSource: gh<_i4.RemoteDataSourceImpl>(),
        ));
    gh.factory<_i6.TodoBloc>(
        () => _i6.TodoBloc(taskRepositoryImpl: gh<_i5.TaskRepositoryImpl>()));
    gh.factory<_i7.IAuthRepository>(() => _i8.AuthRepositoryImpl(
          localDataSource: gh<_i3.LocalDataSource>(),
          taskRepositoryImpl: gh<_i5.TaskRepositoryImpl>(),
        ));
    gh.factory<_i9.AuthBloc>(
        () => _i9.AuthBloc(authRepository: gh<_i7.IAuthRepository>()));
    return this;
  }
}
