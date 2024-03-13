import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_entity.freezed.dart';

@freezed
class ActivityEntity with _$ActivityEntity {
  const factory ActivityEntity({
    @Default('') String title,
    @Default('') String description,
    @Default('') String priority,
    @Default(false) bool isDone,
  }) = _ActivityEntity;
}
