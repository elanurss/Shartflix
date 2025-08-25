// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponseModel {

 Response get response; Data get data;
/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseModelCopyWith<LoginResponseModel> get copyWith => _$LoginResponseModelCopyWithImpl<LoginResponseModel>(this as LoginResponseModel, _$identity);

  /// Serializes this LoginResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponseModel&&(identical(other.response, response) || other.response == response)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,response,data);

@override
String toString() {
  return 'LoginResponseModel(response: $response, data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginResponseModelCopyWith<$Res>  {
  factory $LoginResponseModelCopyWith(LoginResponseModel value, $Res Function(LoginResponseModel) _then) = _$LoginResponseModelCopyWithImpl;
@useResult
$Res call({
 Response response, Data data
});


$ResponseCopyWith<$Res> get response;$DataCopyWith<$Res> get data;

}
/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._self, this._then);

  final LoginResponseModel _self;
  final $Res Function(LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? response = null,Object? data = null,}) {
  return _then(_self.copyWith(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as Response,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data,
  ));
}
/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseCopyWith<$Res> get response {
  
  return $ResponseCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res> get data {
  
  return $DataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponseModel].
extension LoginResponseModelPatterns on LoginResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Response response,  Data data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.response,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Response response,  Data data)  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel():
return $default(_that.response,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Response response,  Data data)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.response,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponseModel implements LoginResponseModel {
  const _LoginResponseModel({required this.response, required this.data});
  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);

@override final  Response response;
@override final  Data data;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith => __$LoginResponseModelCopyWithImpl<_LoginResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponseModel&&(identical(other.response, response) || other.response == response)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,response,data);

@override
String toString() {
  return 'LoginResponseModel(response: $response, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseModelCopyWith<$Res> implements $LoginResponseModelCopyWith<$Res> {
  factory _$LoginResponseModelCopyWith(_LoginResponseModel value, $Res Function(_LoginResponseModel) _then) = __$LoginResponseModelCopyWithImpl;
@override @useResult
$Res call({
 Response response, Data data
});


@override $ResponseCopyWith<$Res> get response;@override $DataCopyWith<$Res> get data;

}
/// @nodoc
class __$LoginResponseModelCopyWithImpl<$Res>
    implements _$LoginResponseModelCopyWith<$Res> {
  __$LoginResponseModelCopyWithImpl(this._self, this._then);

  final _LoginResponseModel _self;
  final $Res Function(_LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? response = null,Object? data = null,}) {
  return _then(_LoginResponseModel(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as Response,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data,
  ));
}

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseCopyWith<$Res> get response {
  
  return $ResponseCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res> get data {
  
  return $DataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Data {

 String? get id; String? get dataId; String? get name; String? get email; String? get photoUrl; String? get token;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.id, id) || other.id == id)&&(identical(other.dataId, dataId) || other.dataId == dataId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dataId,name,email,photoUrl,token);

@override
String toString() {
  return 'Data(id: $id, dataId: $dataId, name: $name, email: $email, photoUrl: $photoUrl, token: $token)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
 String? id, String? dataId, String? name, String? email, String? photoUrl, String? token
});




}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? dataId = freezed,Object? name = freezed,Object? email = freezed,Object? photoUrl = freezed,Object? token = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,dataId: freezed == dataId ? _self.dataId : dataId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? dataId,  String? name,  String? email,  String? photoUrl,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.id,_that.dataId,_that.name,_that.email,_that.photoUrl,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? dataId,  String? name,  String? email,  String? photoUrl,  String? token)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.id,_that.dataId,_that.name,_that.email,_that.photoUrl,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? dataId,  String? name,  String? email,  String? photoUrl,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.id,_that.dataId,_that.name,_that.email,_that.photoUrl,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({this.id, this.dataId, this.name, this.email, this.photoUrl, this.token});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override final  String? id;
@override final  String? dataId;
@override final  String? name;
@override final  String? email;
@override final  String? photoUrl;
@override final  String? token;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.id, id) || other.id == id)&&(identical(other.dataId, dataId) || other.dataId == dataId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dataId,name,email,photoUrl,token);

@override
String toString() {
  return 'Data(id: $id, dataId: $dataId, name: $name, email: $email, photoUrl: $photoUrl, token: $token)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? dataId, String? name, String? email, String? photoUrl, String? token
});




}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? dataId = freezed,Object? name = freezed,Object? email = freezed,Object? photoUrl = freezed,Object? token = freezed,}) {
  return _then(_Data(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,dataId: freezed == dataId ? _self.dataId : dataId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Response {

 int get code; String get message;
/// Create a copy of Response
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseCopyWith<Response> get copyWith => _$ResponseCopyWithImpl<Response>(this as Response, _$identity);

  /// Serializes this Response to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Response&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message);

@override
String toString() {
  return 'Response(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class $ResponseCopyWith<$Res>  {
  factory $ResponseCopyWith(Response value, $Res Function(Response) _then) = _$ResponseCopyWithImpl;
@useResult
$Res call({
 int code, String message
});




}
/// @nodoc
class _$ResponseCopyWithImpl<$Res>
    implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._self, this._then);

  final Response _self;
  final $Res Function(Response) _then;

/// Create a copy of Response
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Response].
extension ResponsePatterns on Response {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Response value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Response() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Response value)  $default,){
final _that = this;
switch (_that) {
case _Response():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Response value)?  $default,){
final _that = this;
switch (_that) {
case _Response() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int code,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Response() when $default != null:
return $default(_that.code,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int code,  String message)  $default,) {final _that = this;
switch (_that) {
case _Response():
return $default(_that.code,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int code,  String message)?  $default,) {final _that = this;
switch (_that) {
case _Response() when $default != null:
return $default(_that.code,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Response implements Response {
  const _Response({required this.code, required this.message});
  factory _Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);

@override final  int code;
@override final  String message;

/// Create a copy of Response
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseCopyWith<_Response> get copyWith => __$ResponseCopyWithImpl<_Response>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Response&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message);

@override
String toString() {
  return 'Response(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ResponseCopyWith<$Res> implements $ResponseCopyWith<$Res> {
  factory _$ResponseCopyWith(_Response value, $Res Function(_Response) _then) = __$ResponseCopyWithImpl;
@override @useResult
$Res call({
 int code, String message
});




}
/// @nodoc
class __$ResponseCopyWithImpl<$Res>
    implements _$ResponseCopyWith<$Res> {
  __$ResponseCopyWithImpl(this._self, this._then);

  final _Response _self;
  final $Res Function(_Response) _then;

/// Create a copy of Response
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,}) {
  return _then(_Response(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
