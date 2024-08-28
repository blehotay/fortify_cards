import 'package:api_client/src/models/user_data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const userData = UserData(
      userId: 'userId',
      firstName: 'firstName',
      lastName: 'lastName',
      email: 'email',
      userTypeData: UserTypeData.adult);

  test('can be deserialzed', () {
    expect(UserData.fromJson(userData.toJson()), equals(userData));
  });
}
