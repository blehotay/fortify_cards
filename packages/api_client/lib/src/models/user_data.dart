import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_data.g.dart';

/// Represents the data associated with a user.
///
/// This class is immutable and provides methods to convert between JSON
/// and the UserData object.
@JsonSerializable()
class UserData extends Equatable {
  /// Creates a new instance of [UserData].
  ///
  /// Requires [userId], [firstName], [lastName], [email], and [userTypeData]
  /// to be provided.
  const UserData({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.userTypeData,
  });

  /// Creates a [UserData] instance from a JSON map.
  ///
  /// The [json] map must contain the following keys: 'userId', 'firstName',
  /// 'lastName', 'email', and 'userTypeData'. The values associated with
  /// these keys must be of the expected types.
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  /// Converts the [UserData] instance to a JSON map.
  ///
  /// The resulting map contains keys and values that correspond to the
  /// properties of this [UserData] instance. This map can be used for
  /// serialization or other purposes where a JSON representation is needed.
  Map<String, dynamic> toJson() => _$UserDataToJson(this);

  /// The unique identifier for the user.
  final String userId;

  /// The user's first name.
  final String firstName;

  /// The user's last name.
  final String lastName;

  /// The user's email address.
  final String email;

  /// The type of user, represented as an enum.
  final UserTypeData userTypeData;

  @override
  List<Object?> get props => [userId, firstName, lastName, email, userTypeData];
}

/// Enum representing the different types of users.
///
/// This enum is used to categorize the user based on their role or type.
enum UserTypeData {
  /// Represents a coach user type.
  coach,

  /// Represents an adult user type.
  adult,

  /// Represents a teen user type.
  teen,
}
