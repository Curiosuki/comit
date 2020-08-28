import 'package:comit/models/model_user_sites.dart';

class User {
  String userType;
  String userName;
  String email;
  String passwords;
  String userAvatarUrl;
  Site site;

  User({
    this.userType,
    this.userName,
    this.email,
    this.passwords,
    this.userAvatarUrl,
    this.site,
  });
}


