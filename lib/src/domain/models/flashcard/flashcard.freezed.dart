// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Flashcard {

 String get id; String get topicId; String get wort; String get vokabel; bool get isLearned; DateTime get nextReview; int get reviewCount;
/// Create a copy of Flashcard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlashcardCopyWith<Flashcard> get copyWith => _$FlashcardCopyWithImpl<Flashcard>(this as Flashcard, _$identity);

  /// Serializes this Flashcard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Flashcard&&(identical(other.id, id) || other.id == id)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.wort, wort) || other.wort == wort)&&(identical(other.vokabel, vokabel) || other.vokabel == vokabel)&&(identical(other.isLearned, isLearned) || other.isLearned == isLearned)&&(identical(other.nextReview, nextReview) || other.nextReview == nextReview)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,topicId,wort,vokabel,isLearned,nextReview,reviewCount);

@override
String toString() {
  return 'Flashcard(id: $id, topicId: $topicId, wort: $wort, vokabel: $vokabel, isLearned: $isLearned, nextReview: $nextReview, reviewCount: $reviewCount)';
}


}

/// @nodoc
abstract mixin class $FlashcardCopyWith<$Res>  {
  factory $FlashcardCopyWith(Flashcard value, $Res Function(Flashcard) _then) = _$FlashcardCopyWithImpl;
@useResult
$Res call({
 String id, String topicId, String wort, String vokabel, bool isLearned, DateTime nextReview, int reviewCount
});




}
/// @nodoc
class _$FlashcardCopyWithImpl<$Res>
    implements $FlashcardCopyWith<$Res> {
  _$FlashcardCopyWithImpl(this._self, this._then);

  final Flashcard _self;
  final $Res Function(Flashcard) _then;

/// Create a copy of Flashcard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? topicId = null,Object? wort = null,Object? vokabel = null,Object? isLearned = null,Object? nextReview = null,Object? reviewCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,wort: null == wort ? _self.wort : wort // ignore: cast_nullable_to_non_nullable
as String,vokabel: null == vokabel ? _self.vokabel : vokabel // ignore: cast_nullable_to_non_nullable
as String,isLearned: null == isLearned ? _self.isLearned : isLearned // ignore: cast_nullable_to_non_nullable
as bool,nextReview: null == nextReview ? _self.nextReview : nextReview // ignore: cast_nullable_to_non_nullable
as DateTime,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Flashcard].
extension FlashcardPatterns on Flashcard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Flashcard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Flashcard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Flashcard value)  $default,){
final _that = this;
switch (_that) {
case _Flashcard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Flashcard value)?  $default,){
final _that = this;
switch (_that) {
case _Flashcard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String topicId,  String wort,  String vokabel,  bool isLearned,  DateTime nextReview,  int reviewCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Flashcard() when $default != null:
return $default(_that.id,_that.topicId,_that.wort,_that.vokabel,_that.isLearned,_that.nextReview,_that.reviewCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String topicId,  String wort,  String vokabel,  bool isLearned,  DateTime nextReview,  int reviewCount)  $default,) {final _that = this;
switch (_that) {
case _Flashcard():
return $default(_that.id,_that.topicId,_that.wort,_that.vokabel,_that.isLearned,_that.nextReview,_that.reviewCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String topicId,  String wort,  String vokabel,  bool isLearned,  DateTime nextReview,  int reviewCount)?  $default,) {final _that = this;
switch (_that) {
case _Flashcard() when $default != null:
return $default(_that.id,_that.topicId,_that.wort,_that.vokabel,_that.isLearned,_that.nextReview,_that.reviewCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Flashcard implements Flashcard {
  const _Flashcard({required this.id, required this.topicId, required this.wort, required this.vokabel, this.isLearned = false, required this.nextReview, this.reviewCount = 0});
  factory _Flashcard.fromJson(Map<String, dynamic> json) => _$FlashcardFromJson(json);

@override final  String id;
@override final  String topicId;
@override final  String wort;
@override final  String vokabel;
@override@JsonKey() final  bool isLearned;
@override final  DateTime nextReview;
@override@JsonKey() final  int reviewCount;

/// Create a copy of Flashcard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlashcardCopyWith<_Flashcard> get copyWith => __$FlashcardCopyWithImpl<_Flashcard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlashcardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Flashcard&&(identical(other.id, id) || other.id == id)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.wort, wort) || other.wort == wort)&&(identical(other.vokabel, vokabel) || other.vokabel == vokabel)&&(identical(other.isLearned, isLearned) || other.isLearned == isLearned)&&(identical(other.nextReview, nextReview) || other.nextReview == nextReview)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,topicId,wort,vokabel,isLearned,nextReview,reviewCount);

@override
String toString() {
  return 'Flashcard(id: $id, topicId: $topicId, wort: $wort, vokabel: $vokabel, isLearned: $isLearned, nextReview: $nextReview, reviewCount: $reviewCount)';
}


}

/// @nodoc
abstract mixin class _$FlashcardCopyWith<$Res> implements $FlashcardCopyWith<$Res> {
  factory _$FlashcardCopyWith(_Flashcard value, $Res Function(_Flashcard) _then) = __$FlashcardCopyWithImpl;
@override @useResult
$Res call({
 String id, String topicId, String wort, String vokabel, bool isLearned, DateTime nextReview, int reviewCount
});




}
/// @nodoc
class __$FlashcardCopyWithImpl<$Res>
    implements _$FlashcardCopyWith<$Res> {
  __$FlashcardCopyWithImpl(this._self, this._then);

  final _Flashcard _self;
  final $Res Function(_Flashcard) _then;

/// Create a copy of Flashcard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? topicId = null,Object? wort = null,Object? vokabel = null,Object? isLearned = null,Object? nextReview = null,Object? reviewCount = null,}) {
  return _then(_Flashcard(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,wort: null == wort ? _self.wort : wort // ignore: cast_nullable_to_non_nullable
as String,vokabel: null == vokabel ? _self.vokabel : vokabel // ignore: cast_nullable_to_non_nullable
as String,isLearned: null == isLearned ? _self.isLearned : isLearned // ignore: cast_nullable_to_non_nullable
as bool,nextReview: null == nextReview ? _self.nextReview : nextReview // ignore: cast_nullable_to_non_nullable
as DateTime,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
