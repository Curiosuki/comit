import 'package:comit/models/model_user.dart';
import '../model_user_sites.dart';

List<User> userInfo = [
  User(
      userType: 'User',
      email: 'expert120@naver.com',
      passwords: '1234567',
      userAvatarUrl: 'assets/images/avatar1.jpg'),
];

List<User> buyerInfo = [
  User(
      userType: 'Buyer',
      userName: 'James Kim',
      email: 'expert120@naver.com',
      passwords: '1234567',
      userAvatarUrl: 'assets/images/avatar5.jpg'),
];

List<User> sellerInfo = [
  User(
    userType: 'Tutor',
    userName: 'Angela Yu',
    userAvatarUrl: 'assets/images/avatar2.jpg',
    site: Site(
      webSite: 'naver.com',
      youTube: 'youtube.com',
      faceBook: 'facebook,com',
    ),
  ),
  User(
    userType: 'Tutor',
    userName: 'Jack Kim',
    userAvatarUrl: 'assets/images/avatar3.jpg',
    site: Site(
      webSite: 'naver.com',
      youTube: 'youtube.com',
      faceBook: 'facebook,com',
    ),
  ),
  User(
    userType: 'Tutor',
    userName: 'Christine Choi',
    userAvatarUrl: 'assets/images/avatar4.jpg',
    site: Site(
      webSite: 'naver.com',
      youTube: 'youtube.com',
      faceBook: 'facebook,com',
    ),
  ),
];