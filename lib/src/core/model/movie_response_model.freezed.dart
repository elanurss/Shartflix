// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieResponseModel {

 List<Movie>? get movies; Pagination? get pagination;
/// Create a copy of MovieResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieResponseModelCopyWith<MovieResponseModel> get copyWith => _$MovieResponseModelCopyWithImpl<MovieResponseModel>(this as MovieResponseModel, _$identity);

  /// Serializes this MovieResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieResponseModel&&const DeepCollectionEquality().equals(other.movies, movies)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(movies),pagination);

@override
String toString() {
  return 'MovieResponseModel(movies: $movies, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $MovieResponseModelCopyWith<$Res>  {
  factory $MovieResponseModelCopyWith(MovieResponseModel value, $Res Function(MovieResponseModel) _then) = _$MovieResponseModelCopyWithImpl;
@useResult
$Res call({
 List<Movie>? movies, Pagination? pagination
});


$PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$MovieResponseModelCopyWithImpl<$Res>
    implements $MovieResponseModelCopyWith<$Res> {
  _$MovieResponseModelCopyWithImpl(this._self, this._then);

  final MovieResponseModel _self;
  final $Res Function(MovieResponseModel) _then;

/// Create a copy of MovieResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movies = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
movies: freezed == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}
/// Create a copy of MovieResponseModel
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


/// Adds pattern-matching-related methods to [MovieResponseModel].
extension MovieResponseModelPatterns on MovieResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieResponseModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _MovieResponseModel():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _MovieResponseModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Movie>? movies,  Pagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieResponseModel() when $default != null:
return $default(_that.movies,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Movie>? movies,  Pagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _MovieResponseModel():
return $default(_that.movies,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Movie>? movies,  Pagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _MovieResponseModel() when $default != null:
return $default(_that.movies,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieResponseModel implements MovieResponseModel {
  const _MovieResponseModel({final  List<Movie>? movies, this.pagination}): _movies = movies;
  factory _MovieResponseModel.fromJson(Map<String, dynamic> json) => _$MovieResponseModelFromJson(json);

 final  List<Movie>? _movies;
@override List<Movie>? get movies {
  final value = _movies;
  if (value == null) return null;
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Pagination? pagination;

/// Create a copy of MovieResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieResponseModelCopyWith<_MovieResponseModel> get copyWith => __$MovieResponseModelCopyWithImpl<_MovieResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieResponseModel&&const DeepCollectionEquality().equals(other._movies, _movies)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_movies),pagination);

@override
String toString() {
  return 'MovieResponseModel(movies: $movies, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$MovieResponseModelCopyWith<$Res> implements $MovieResponseModelCopyWith<$Res> {
  factory _$MovieResponseModelCopyWith(_MovieResponseModel value, $Res Function(_MovieResponseModel) _then) = __$MovieResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<Movie>? movies, Pagination? pagination
});


@override $PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$MovieResponseModelCopyWithImpl<$Res>
    implements _$MovieResponseModelCopyWith<$Res> {
  __$MovieResponseModelCopyWithImpl(this._self, this._then);

  final _MovieResponseModel _self;
  final $Res Function(_MovieResponseModel) _then;

/// Create a copy of MovieResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movies = freezed,Object? pagination = freezed,}) {
  return _then(_MovieResponseModel(
movies: freezed == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}

/// Create a copy of MovieResponseModel
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
mixin _$Movie {

@JsonKey(name: '_id') String? get id;@JsonKey(name: 'id') String? get movieId;@JsonKey(name: 'Title') String? get title;@JsonKey(name: 'Year') String? get year;@JsonKey(name: 'Rated') String? get rated;@JsonKey(name: 'Released') String? get released;@JsonKey(name: 'Runtime') String? get runtime;@JsonKey(name: 'Genre') String? get genre;@JsonKey(name: 'Director') String? get director;@JsonKey(name: 'Writer') String? get writer;@JsonKey(name: 'Actors') String? get actors;@JsonKey(name: 'Plot') String? get plot;@JsonKey(name: 'Language') String? get language;@JsonKey(name: 'Country') String? get country;@JsonKey(name: 'Awards') String? get awards;@JsonKey(name: 'Poster') String? get poster;@JsonKey(name: 'Metascore') String? get metascore;@JsonKey(name: 'imdbRating') String? get imdbRating;@JsonKey(name: 'imdbVotes') String? get imdbVotes;@JsonKey(name: 'imdbID') String? get imdbId;@JsonKey(name: 'Type') String? get type;@JsonKey(name: 'Response') String? get response;@JsonKey(name: 'Images') List<String>? get images;@JsonKey(name: 'ComingSoon') bool? get comingSoon; bool? get isFavorite;
/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieCopyWith<Movie> get copyWith => _$MovieCopyWithImpl<Movie>(this as Movie, _$identity);

  /// Serializes this Movie to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Movie&&(identical(other.id, id) || other.id == id)&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.title, title) || other.title == title)&&(identical(other.year, year) || other.year == year)&&(identical(other.rated, rated) || other.rated == rated)&&(identical(other.released, released) || other.released == released)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.director, director) || other.director == director)&&(identical(other.writer, writer) || other.writer == writer)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.plot, plot) || other.plot == plot)&&(identical(other.language, language) || other.language == language)&&(identical(other.country, country) || other.country == country)&&(identical(other.awards, awards) || other.awards == awards)&&(identical(other.poster, poster) || other.poster == poster)&&(identical(other.metascore, metascore) || other.metascore == metascore)&&(identical(other.imdbRating, imdbRating) || other.imdbRating == imdbRating)&&(identical(other.imdbVotes, imdbVotes) || other.imdbVotes == imdbVotes)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&(identical(other.type, type) || other.type == type)&&(identical(other.response, response) || other.response == response)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.comingSoon, comingSoon) || other.comingSoon == comingSoon)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,movieId,title,year,rated,released,runtime,genre,director,writer,actors,plot,language,country,awards,poster,metascore,imdbRating,imdbVotes,imdbId,type,response,const DeepCollectionEquality().hash(images),comingSoon,isFavorite]);

@override
String toString() {
  return 'Movie(id: $id, movieId: $movieId, title: $title, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, director: $director, writer: $writer, actors: $actors, plot: $plot, language: $language, country: $country, awards: $awards, poster: $poster, metascore: $metascore, imdbRating: $imdbRating, imdbVotes: $imdbVotes, imdbId: $imdbId, type: $type, response: $response, images: $images, comingSoon: $comingSoon, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $MovieCopyWith<$Res>  {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) _then) = _$MovieCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String? id,@JsonKey(name: 'id') String? movieId,@JsonKey(name: 'Title') String? title,@JsonKey(name: 'Year') String? year,@JsonKey(name: 'Rated') String? rated,@JsonKey(name: 'Released') String? released,@JsonKey(name: 'Runtime') String? runtime,@JsonKey(name: 'Genre') String? genre,@JsonKey(name: 'Director') String? director,@JsonKey(name: 'Writer') String? writer,@JsonKey(name: 'Actors') String? actors,@JsonKey(name: 'Plot') String? plot,@JsonKey(name: 'Language') String? language,@JsonKey(name: 'Country') String? country,@JsonKey(name: 'Awards') String? awards,@JsonKey(name: 'Poster') String? poster,@JsonKey(name: 'Metascore') String? metascore,@JsonKey(name: 'imdbRating') String? imdbRating,@JsonKey(name: 'imdbVotes') String? imdbVotes,@JsonKey(name: 'imdbID') String? imdbId,@JsonKey(name: 'Type') String? type,@JsonKey(name: 'Response') String? response,@JsonKey(name: 'Images') List<String>? images,@JsonKey(name: 'ComingSoon') bool? comingSoon, bool? isFavorite
});




}
/// @nodoc
class _$MovieCopyWithImpl<$Res>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._self, this._then);

  final Movie _self;
  final $Res Function(Movie) _then;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? movieId = freezed,Object? title = freezed,Object? year = freezed,Object? rated = freezed,Object? released = freezed,Object? runtime = freezed,Object? genre = freezed,Object? director = freezed,Object? writer = freezed,Object? actors = freezed,Object? plot = freezed,Object? language = freezed,Object? country = freezed,Object? awards = freezed,Object? poster = freezed,Object? metascore = freezed,Object? imdbRating = freezed,Object? imdbVotes = freezed,Object? imdbId = freezed,Object? type = freezed,Object? response = freezed,Object? images = freezed,Object? comingSoon = freezed,Object? isFavorite = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,movieId: freezed == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String?,rated: freezed == rated ? _self.rated : rated // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,director: freezed == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String?,writer: freezed == writer ? _self.writer : writer // ignore: cast_nullable_to_non_nullable
as String?,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,plot: freezed == plot ? _self.plot : plot // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,awards: freezed == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as String?,poster: freezed == poster ? _self.poster : poster // ignore: cast_nullable_to_non_nullable
as String?,metascore: freezed == metascore ? _self.metascore : metascore // ignore: cast_nullable_to_non_nullable
as String?,imdbRating: freezed == imdbRating ? _self.imdbRating : imdbRating // ignore: cast_nullable_to_non_nullable
as String?,imdbVotes: freezed == imdbVotes ? _self.imdbVotes : imdbVotes // ignore: cast_nullable_to_non_nullable
as String?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,comingSoon: freezed == comingSoon ? _self.comingSoon : comingSoon // ignore: cast_nullable_to_non_nullable
as bool?,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Movie].
extension MoviePatterns on Movie {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Movie value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Movie value)  $default,){
final _that = this;
switch (_that) {
case _Movie():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Movie value)?  $default,){
final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id, @JsonKey(name: 'id')  String? movieId, @JsonKey(name: 'Title')  String? title, @JsonKey(name: 'Year')  String? year, @JsonKey(name: 'Rated')  String? rated, @JsonKey(name: 'Released')  String? released, @JsonKey(name: 'Runtime')  String? runtime, @JsonKey(name: 'Genre')  String? genre, @JsonKey(name: 'Director')  String? director, @JsonKey(name: 'Writer')  String? writer, @JsonKey(name: 'Actors')  String? actors, @JsonKey(name: 'Plot')  String? plot, @JsonKey(name: 'Language')  String? language, @JsonKey(name: 'Country')  String? country, @JsonKey(name: 'Awards')  String? awards, @JsonKey(name: 'Poster')  String? poster, @JsonKey(name: 'Metascore')  String? metascore, @JsonKey(name: 'imdbRating')  String? imdbRating, @JsonKey(name: 'imdbVotes')  String? imdbVotes, @JsonKey(name: 'imdbID')  String? imdbId, @JsonKey(name: 'Type')  String? type, @JsonKey(name: 'Response')  String? response, @JsonKey(name: 'Images')  List<String>? images, @JsonKey(name: 'ComingSoon')  bool? comingSoon,  bool? isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that.id,_that.movieId,_that.title,_that.year,_that.rated,_that.released,_that.runtime,_that.genre,_that.director,_that.writer,_that.actors,_that.plot,_that.language,_that.country,_that.awards,_that.poster,_that.metascore,_that.imdbRating,_that.imdbVotes,_that.imdbId,_that.type,_that.response,_that.images,_that.comingSoon,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id, @JsonKey(name: 'id')  String? movieId, @JsonKey(name: 'Title')  String? title, @JsonKey(name: 'Year')  String? year, @JsonKey(name: 'Rated')  String? rated, @JsonKey(name: 'Released')  String? released, @JsonKey(name: 'Runtime')  String? runtime, @JsonKey(name: 'Genre')  String? genre, @JsonKey(name: 'Director')  String? director, @JsonKey(name: 'Writer')  String? writer, @JsonKey(name: 'Actors')  String? actors, @JsonKey(name: 'Plot')  String? plot, @JsonKey(name: 'Language')  String? language, @JsonKey(name: 'Country')  String? country, @JsonKey(name: 'Awards')  String? awards, @JsonKey(name: 'Poster')  String? poster, @JsonKey(name: 'Metascore')  String? metascore, @JsonKey(name: 'imdbRating')  String? imdbRating, @JsonKey(name: 'imdbVotes')  String? imdbVotes, @JsonKey(name: 'imdbID')  String? imdbId, @JsonKey(name: 'Type')  String? type, @JsonKey(name: 'Response')  String? response, @JsonKey(name: 'Images')  List<String>? images, @JsonKey(name: 'ComingSoon')  bool? comingSoon,  bool? isFavorite)  $default,) {final _that = this;
switch (_that) {
case _Movie():
return $default(_that.id,_that.movieId,_that.title,_that.year,_that.rated,_that.released,_that.runtime,_that.genre,_that.director,_that.writer,_that.actors,_that.plot,_that.language,_that.country,_that.awards,_that.poster,_that.metascore,_that.imdbRating,_that.imdbVotes,_that.imdbId,_that.type,_that.response,_that.images,_that.comingSoon,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String? id, @JsonKey(name: 'id')  String? movieId, @JsonKey(name: 'Title')  String? title, @JsonKey(name: 'Year')  String? year, @JsonKey(name: 'Rated')  String? rated, @JsonKey(name: 'Released')  String? released, @JsonKey(name: 'Runtime')  String? runtime, @JsonKey(name: 'Genre')  String? genre, @JsonKey(name: 'Director')  String? director, @JsonKey(name: 'Writer')  String? writer, @JsonKey(name: 'Actors')  String? actors, @JsonKey(name: 'Plot')  String? plot, @JsonKey(name: 'Language')  String? language, @JsonKey(name: 'Country')  String? country, @JsonKey(name: 'Awards')  String? awards, @JsonKey(name: 'Poster')  String? poster, @JsonKey(name: 'Metascore')  String? metascore, @JsonKey(name: 'imdbRating')  String? imdbRating, @JsonKey(name: 'imdbVotes')  String? imdbVotes, @JsonKey(name: 'imdbID')  String? imdbId, @JsonKey(name: 'Type')  String? type, @JsonKey(name: 'Response')  String? response, @JsonKey(name: 'Images')  List<String>? images, @JsonKey(name: 'ComingSoon')  bool? comingSoon,  bool? isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that.id,_that.movieId,_that.title,_that.year,_that.rated,_that.released,_that.runtime,_that.genre,_that.director,_that.writer,_that.actors,_that.plot,_that.language,_that.country,_that.awards,_that.poster,_that.metascore,_that.imdbRating,_that.imdbVotes,_that.imdbId,_that.type,_that.response,_that.images,_that.comingSoon,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Movie implements Movie {
  const _Movie({@JsonKey(name: '_id') this.id, @JsonKey(name: 'id') this.movieId, @JsonKey(name: 'Title') this.title, @JsonKey(name: 'Year') this.year, @JsonKey(name: 'Rated') this.rated, @JsonKey(name: 'Released') this.released, @JsonKey(name: 'Runtime') this.runtime, @JsonKey(name: 'Genre') this.genre, @JsonKey(name: 'Director') this.director, @JsonKey(name: 'Writer') this.writer, @JsonKey(name: 'Actors') this.actors, @JsonKey(name: 'Plot') this.plot, @JsonKey(name: 'Language') this.language, @JsonKey(name: 'Country') this.country, @JsonKey(name: 'Awards') this.awards, @JsonKey(name: 'Poster') this.poster, @JsonKey(name: 'Metascore') this.metascore, @JsonKey(name: 'imdbRating') this.imdbRating, @JsonKey(name: 'imdbVotes') this.imdbVotes, @JsonKey(name: 'imdbID') this.imdbId, @JsonKey(name: 'Type') this.type, @JsonKey(name: 'Response') this.response, @JsonKey(name: 'Images') final  List<String>? images, @JsonKey(name: 'ComingSoon') this.comingSoon, this.isFavorite}): _images = images;
  factory _Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

@override@JsonKey(name: '_id') final  String? id;
@override@JsonKey(name: 'id') final  String? movieId;
@override@JsonKey(name: 'Title') final  String? title;
@override@JsonKey(name: 'Year') final  String? year;
@override@JsonKey(name: 'Rated') final  String? rated;
@override@JsonKey(name: 'Released') final  String? released;
@override@JsonKey(name: 'Runtime') final  String? runtime;
@override@JsonKey(name: 'Genre') final  String? genre;
@override@JsonKey(name: 'Director') final  String? director;
@override@JsonKey(name: 'Writer') final  String? writer;
@override@JsonKey(name: 'Actors') final  String? actors;
@override@JsonKey(name: 'Plot') final  String? plot;
@override@JsonKey(name: 'Language') final  String? language;
@override@JsonKey(name: 'Country') final  String? country;
@override@JsonKey(name: 'Awards') final  String? awards;
@override@JsonKey(name: 'Poster') final  String? poster;
@override@JsonKey(name: 'Metascore') final  String? metascore;
@override@JsonKey(name: 'imdbRating') final  String? imdbRating;
@override@JsonKey(name: 'imdbVotes') final  String? imdbVotes;
@override@JsonKey(name: 'imdbID') final  String? imdbId;
@override@JsonKey(name: 'Type') final  String? type;
@override@JsonKey(name: 'Response') final  String? response;
 final  List<String>? _images;
@override@JsonKey(name: 'Images') List<String>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'ComingSoon') final  bool? comingSoon;
@override final  bool? isFavorite;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieCopyWith<_Movie> get copyWith => __$MovieCopyWithImpl<_Movie>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Movie&&(identical(other.id, id) || other.id == id)&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.title, title) || other.title == title)&&(identical(other.year, year) || other.year == year)&&(identical(other.rated, rated) || other.rated == rated)&&(identical(other.released, released) || other.released == released)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.director, director) || other.director == director)&&(identical(other.writer, writer) || other.writer == writer)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.plot, plot) || other.plot == plot)&&(identical(other.language, language) || other.language == language)&&(identical(other.country, country) || other.country == country)&&(identical(other.awards, awards) || other.awards == awards)&&(identical(other.poster, poster) || other.poster == poster)&&(identical(other.metascore, metascore) || other.metascore == metascore)&&(identical(other.imdbRating, imdbRating) || other.imdbRating == imdbRating)&&(identical(other.imdbVotes, imdbVotes) || other.imdbVotes == imdbVotes)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&(identical(other.type, type) || other.type == type)&&(identical(other.response, response) || other.response == response)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.comingSoon, comingSoon) || other.comingSoon == comingSoon)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,movieId,title,year,rated,released,runtime,genre,director,writer,actors,plot,language,country,awards,poster,metascore,imdbRating,imdbVotes,imdbId,type,response,const DeepCollectionEquality().hash(_images),comingSoon,isFavorite]);

@override
String toString() {
  return 'Movie(id: $id, movieId: $movieId, title: $title, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, director: $director, writer: $writer, actors: $actors, plot: $plot, language: $language, country: $country, awards: $awards, poster: $poster, metascore: $metascore, imdbRating: $imdbRating, imdbVotes: $imdbVotes, imdbId: $imdbId, type: $type, response: $response, images: $images, comingSoon: $comingSoon, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) _then) = __$MovieCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String? id,@JsonKey(name: 'id') String? movieId,@JsonKey(name: 'Title') String? title,@JsonKey(name: 'Year') String? year,@JsonKey(name: 'Rated') String? rated,@JsonKey(name: 'Released') String? released,@JsonKey(name: 'Runtime') String? runtime,@JsonKey(name: 'Genre') String? genre,@JsonKey(name: 'Director') String? director,@JsonKey(name: 'Writer') String? writer,@JsonKey(name: 'Actors') String? actors,@JsonKey(name: 'Plot') String? plot,@JsonKey(name: 'Language') String? language,@JsonKey(name: 'Country') String? country,@JsonKey(name: 'Awards') String? awards,@JsonKey(name: 'Poster') String? poster,@JsonKey(name: 'Metascore') String? metascore,@JsonKey(name: 'imdbRating') String? imdbRating,@JsonKey(name: 'imdbVotes') String? imdbVotes,@JsonKey(name: 'imdbID') String? imdbId,@JsonKey(name: 'Type') String? type,@JsonKey(name: 'Response') String? response,@JsonKey(name: 'Images') List<String>? images,@JsonKey(name: 'ComingSoon') bool? comingSoon, bool? isFavorite
});




}
/// @nodoc
class __$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(this._self, this._then);

  final _Movie _self;
  final $Res Function(_Movie) _then;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? movieId = freezed,Object? title = freezed,Object? year = freezed,Object? rated = freezed,Object? released = freezed,Object? runtime = freezed,Object? genre = freezed,Object? director = freezed,Object? writer = freezed,Object? actors = freezed,Object? plot = freezed,Object? language = freezed,Object? country = freezed,Object? awards = freezed,Object? poster = freezed,Object? metascore = freezed,Object? imdbRating = freezed,Object? imdbVotes = freezed,Object? imdbId = freezed,Object? type = freezed,Object? response = freezed,Object? images = freezed,Object? comingSoon = freezed,Object? isFavorite = freezed,}) {
  return _then(_Movie(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,movieId: freezed == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String?,rated: freezed == rated ? _self.rated : rated // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,director: freezed == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String?,writer: freezed == writer ? _self.writer : writer // ignore: cast_nullable_to_non_nullable
as String?,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,plot: freezed == plot ? _self.plot : plot // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,awards: freezed == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as String?,poster: freezed == poster ? _self.poster : poster // ignore: cast_nullable_to_non_nullable
as String?,metascore: freezed == metascore ? _self.metascore : metascore // ignore: cast_nullable_to_non_nullable
as String?,imdbRating: freezed == imdbRating ? _self.imdbRating : imdbRating // ignore: cast_nullable_to_non_nullable
as String?,imdbVotes: freezed == imdbVotes ? _self.imdbVotes : imdbVotes // ignore: cast_nullable_to_non_nullable
as String?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,comingSoon: freezed == comingSoon ? _self.comingSoon : comingSoon // ignore: cast_nullable_to_non_nullable
as bool?,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$Pagination {

 int? get totalCount; int? get perPage; int? get maxPage; int? get currentPage;
/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationCopyWith<Pagination> get copyWith => _$PaginationCopyWithImpl<Pagination>(this as Pagination, _$identity);

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pagination&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.maxPage, maxPage) || other.maxPage == maxPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,perPage,maxPage,currentPage);

@override
String toString() {
  return 'Pagination(totalCount: $totalCount, perPage: $perPage, maxPage: $maxPage, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class $PaginationCopyWith<$Res>  {
  factory $PaginationCopyWith(Pagination value, $Res Function(Pagination) _then) = _$PaginationCopyWithImpl;
@useResult
$Res call({
 int? totalCount, int? perPage, int? maxPage, int? currentPage
});




}
/// @nodoc
class _$PaginationCopyWithImpl<$Res>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._self, this._then);

  final Pagination _self;
  final $Res Function(Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = freezed,Object? perPage = freezed,Object? maxPage = freezed,Object? currentPage = freezed,}) {
  return _then(_self.copyWith(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,maxPage: freezed == maxPage ? _self.maxPage : maxPage // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Pagination].
extension PaginationPatterns on Pagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pagination value)  $default,){
final _that = this;
switch (_that) {
case _Pagination():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pagination value)?  $default,){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? totalCount,  int? perPage,  int? maxPage,  int? currentPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.totalCount,_that.perPage,_that.maxPage,_that.currentPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? totalCount,  int? perPage,  int? maxPage,  int? currentPage)  $default,) {final _that = this;
switch (_that) {
case _Pagination():
return $default(_that.totalCount,_that.perPage,_that.maxPage,_that.currentPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? totalCount,  int? perPage,  int? maxPage,  int? currentPage)?  $default,) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.totalCount,_that.perPage,_that.maxPage,_that.currentPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pagination implements Pagination {
  const _Pagination({this.totalCount, this.perPage, this.maxPage, this.currentPage});
  factory _Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);

@override final  int? totalCount;
@override final  int? perPage;
@override final  int? maxPage;
@override final  int? currentPage;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationCopyWith<_Pagination> get copyWith => __$PaginationCopyWithImpl<_Pagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pagination&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.maxPage, maxPage) || other.maxPage == maxPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,perPage,maxPage,currentPage);

@override
String toString() {
  return 'Pagination(totalCount: $totalCount, perPage: $perPage, maxPage: $maxPage, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class _$PaginationCopyWith<$Res> implements $PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(_Pagination value, $Res Function(_Pagination) _then) = __$PaginationCopyWithImpl;
@override @useResult
$Res call({
 int? totalCount, int? perPage, int? maxPage, int? currentPage
});




}
/// @nodoc
class __$PaginationCopyWithImpl<$Res>
    implements _$PaginationCopyWith<$Res> {
  __$PaginationCopyWithImpl(this._self, this._then);

  final _Pagination _self;
  final $Res Function(_Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = freezed,Object? perPage = freezed,Object? maxPage = freezed,Object? currentPage = freezed,}) {
  return _then(_Pagination(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,maxPage: freezed == maxPage ? _self.maxPage : maxPage // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
