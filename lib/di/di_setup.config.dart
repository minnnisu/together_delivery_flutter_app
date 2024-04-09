// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:together_delivery_app/data_sources/PostDataSource.dart' as _i3;
import 'package:together_delivery_app/providers/postListProvider.dart' as _i5;
import 'package:together_delivery_app/repository/postRepository.dart' as _i4;

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
    gh.factory<_i3.PostDataSource>(() => _i3.PostDataSource());
    gh.factory<_i4.PostRepository>(
        () => _i4.PostRepository(gh<_i3.PostDataSource>()));
    gh.factory<_i5.PostListProvider>(
        () => _i5.PostListProvider(gh<_i4.PostRepository>()));
    return this;
  }
}
