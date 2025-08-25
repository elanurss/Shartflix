// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Error():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( int selectedIndex,  List<Movie>? movies,  List<favorite.FavoriteMovieResponseModel>? favoriteMovies,  bool actionLoading,  UserProfileResponseModel? userProfileResponseModel,  bool isLoadingMore,  Pagination? pagination)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.selectedIndex,_that.movies,_that.favoriteMovies,_that.actionLoading,_that.userProfileResponseModel,_that.isLoadingMore,_that.pagination);case _Error() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( int selectedIndex,  List<Movie>? movies,  List<favorite.FavoriteMovieResponseModel>? favoriteMovies,  bool actionLoading,  UserProfileResponseModel? userProfileResponseModel,  bool isLoadingMore,  Pagination? pagination)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.selectedIndex,_that.movies,_that.favoriteMovies,_that.actionLoading,_that.userProfileResponseModel,_that.isLoadingMore,_that.pagination);case _Error():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( int selectedIndex,  List<Movie>? movies,  List<favorite.FavoriteMovieResponseModel>? favoriteMovies,  bool actionLoading,  UserProfileResponseModel? userProfileResponseModel,  bool isLoadingMore,  Pagination? pagination)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.selectedIndex,_that.movies,_that.favoriteMovies,_that.actionLoading,_that.userProfileResponseModel,_that.isLoadingMore,_that.pagination);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial extends HomeState {
  const _Initial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class _Loading extends HomeState {
  const _Loading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class _Success extends HomeState {
  const _Success({this.selectedIndex = 0, final  List<Movie>? movies, final  List<favorite.FavoriteMovieResponseModel>? favoriteMovies, this.actionLoading = false, this.userProfileResponseModel, this.isLoadingMore = false, this.pagination}): _movies = movies,_favoriteMovies = favoriteMovies,super._();
  

@JsonKey() final  int selectedIndex;
 final  List<Movie>? _movies;
 List<Movie>? get movies {
  final value = _movies;
  if (value == null) return null;
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<favorite.FavoriteMovieResponseModel>? _favoriteMovies;
 List<favorite.FavoriteMovieResponseModel>? get favoriteMovies {
  final value = _favoriteMovies;
  if (value == null) return null;
  if (_favoriteMovies is EqualUnmodifiableListView) return _favoriteMovies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@JsonKey() final  bool actionLoading;
 final  UserProfileResponseModel? userProfileResponseModel;
@JsonKey() final  bool isLoadingMore;
 final  Pagination? pagination;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex)&&const DeepCollectionEquality().equals(other._movies, _movies)&&const DeepCollectionEquality().equals(other._favoriteMovies, _favoriteMovies)&&(identical(other.actionLoading, actionLoading) || other.actionLoading == actionLoading)&&(identical(other.userProfileResponseModel, userProfileResponseModel) || other.userProfileResponseModel == userProfileResponseModel)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndex,const DeepCollectionEquality().hash(_movies),const DeepCollectionEquality().hash(_favoriteMovies),actionLoading,userProfileResponseModel,isLoadingMore,pagination);

@override
String toString() {
  return 'HomeState.success(selectedIndex: $selectedIndex, movies: $movies, favoriteMovies: $favoriteMovies, actionLoading: $actionLoading, userProfileResponseModel: $userProfileResponseModel, isLoadingMore: $isLoadingMore, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 int selectedIndex, List<Movie>? movies, List<favorite.FavoriteMovieResponseModel>? favoriteMovies, bool actionLoading, UserProfileResponseModel? userProfileResponseModel, bool isLoadingMore, Pagination? pagination
});


$UserProfileResponseModelCopyWith<$Res>? get userProfileResponseModel;$PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedIndex = null,Object? movies = freezed,Object? favoriteMovies = freezed,Object? actionLoading = null,Object? userProfileResponseModel = freezed,Object? isLoadingMore = null,Object? pagination = freezed,}) {
  return _then(_Success(
selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,movies: freezed == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>?,favoriteMovies: freezed == favoriteMovies ? _self._favoriteMovies : favoriteMovies // ignore: cast_nullable_to_non_nullable
as List<favorite.FavoriteMovieResponseModel>?,actionLoading: null == actionLoading ? _self.actionLoading : actionLoading // ignore: cast_nullable_to_non_nullable
as bool,userProfileResponseModel: freezed == userProfileResponseModel ? _self.userProfileResponseModel : userProfileResponseModel // ignore: cast_nullable_to_non_nullable
as UserProfileResponseModel?,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileResponseModelCopyWith<$Res>? get userProfileResponseModel {
    if (_self.userProfileResponseModel == null) {
    return null;
  }

  return $UserProfileResponseModelCopyWith<$Res>(_self.userProfileResponseModel!, (value) {
    return _then(_self.copyWith(userProfileResponseModel: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

/// @nodoc


class _Error extends HomeState {
  const _Error({required this.message}): super._();
  

 final  String message;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
