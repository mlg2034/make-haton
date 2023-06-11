import 'dart:math';

import 'package:equatable/equatable.dart';

class CharacterEntity extends Equatable {
  CharacterEntity({
    required this.clothesId,
    required this.colorId,
    required this.eyeId,
    required this.hatId,
  });
  final String eyeId;
  final String colorId;
  final String clothesId;
  final String hatId;
  @override
  List<Object?> get props => [eyeId, clothesId, hatId, colorId];
}
