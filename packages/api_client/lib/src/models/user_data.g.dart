// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      userId: json['userId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      userTypeData: $enumDecode(_$UserTypeDataEnumMap, json['userTypeData']),
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'userTypeData': _$UserTypeDataEnumMap[instance.userTypeData]!,
    };

const _$UserTypeDataEnumMap = {
  UserTypeData.coach: 'coach',
  UserTypeData.adult: 'adult',
  UserTypeData.teen: 'teen',
};
