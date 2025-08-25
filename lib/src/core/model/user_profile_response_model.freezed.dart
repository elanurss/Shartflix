// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfileResponseModel {

 String? get id; String? get name; String? get email; String? get photoUrl; String? get token;
/// Create a copy of UserProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileResponseModelCopyWith<UserProfileResponseModel> get copyWith => _$UserProfileResponseModelCopyWithImpl<UserProfileResponseModel>(this as UserProfileResponseModel, _$identity);

  /// Serializes this UserProfileResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,photoUrl,token);

@override
String toString() {
  return 'UserProfileResponseModel(id: $id, name: $name, email: $email, photoUrl: $photoUrl, token: $token)';
}


}

/// @nodoc
abstract mixin class $UserProfileResponseModelCopyWith<$Res>  {
  factory $UserProfileResponseModelCopyWith(UserProfileResponseModel value, $Res Function(UserProfileResponseModel) _then) = _$UserProfileResponseModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? email, String? photoUrl, String? token
});




}
/// @nodoc
class _$UserProfileResponseModelCopyWithImpl<$Res>
    implements $UserProfileResponseModelCopyWith<$Res> {
  _$UserProfileResponseModelCopyWithImpl(this._self, this._then);

  final UserProfileResponseModel _self;
  final $Res Function(UserProfileResponseModel) _then;

/// Create a copy of UserProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? photoUrl = freezed,Object? token = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfileResponseModel].
extension UserProfileResponseModelPatterns on UserProfileResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfileResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfileResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _UserProfileResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfileResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfileResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? email,  String? photoUrl,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.photoUrl,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? email,  String? photoUrl,  String? token)  $default,) {final _that = this;
switch (_that) {
case _UserProfileResponseModel():
return $default(_that.id,_that.name,_that.email,_that.photoUrl,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? email,  String? photoUrl,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _UserProfileResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.photoUrl,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfileResponseModel implements UserProfileResponseModel {
  const _UserProfileResponseModel({this.id, this.name, this.email, this.photoUrl, this.token});
  factory _UserProfileResponseModel.fromJson(Map<String, dynamic> json) => _$UserProfileResponseModelFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? email;
@override final  String? photoUrl;
@override final  String? token;

/// Create a copy of UserProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileResponseModelCopyWith<_UserProfileResponseModel> get copyWith => __$UserProfileResponseModelCopyWithImpl<_UserProfileResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,photoUrl,token);

@override
String toString() {
  return 'UserProfileResponseModel(id: $id, name: $name, email: $email, photoUrl: $photoUrl, token: $token)';
}


}

/// @nodoc
abstract mixin class _$UserProfileResponseModelCopyWith<$Res> implements $UserProfileResponseModelCopyWith<$Res> {
  factory _$UserProfileResponseModelCopyWith(_UserProfileResponseModel value, $Res Function(_UserProfileResponseModel) _then) = __$UserProfileResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? email, String? photoUrl, String? token
});




}
/// @nodoc
class __$UserProfileResponseModelCopyWithImpl<$Res>
    implements _$UserProfileResponseModelCopyWith<$Res> {
  __$UserProfileResponseModelCopyWithImpl(this._self, this._then);

  final _UserProfileResponseModel _self;
  final $Res Function(_UserProfileResponseModel) _then;

/// Create a copy of UserProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? photoUrl = freezed,Object? token = freezed,}) {
  return _then(_UserProfileResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
