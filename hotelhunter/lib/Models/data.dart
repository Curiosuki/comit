import 'package:hotelhunter/Models/messaging_object.dart';
import 'package:hotelhunter/Models/posting_object.dart';
import 'package:hotelhunter/Models/review_object.dart';
import 'package:hotelhunter/Models/user_object.dart';

class PracticeData {
  // User data
  static List<User> users;
  static List<Posting> postings;

  static populateFields() {
    User user1 = User(
        firstName: 'Nimish',
        lastName: 'Nara',
        imagePath: 'assets/images/avatar1.jpg',
        email: 'hijack@naver.com',
        bio: 'I like traveling, exloring',
        city: 'Suwon',
        country: 'Korea');
    user1.isHost = true;

    User user2 = User(
        firstName: 'Jack',
        lastName: 'Kim',
        imagePath: 'assets/images/avatar1.jpg',
        email: 'hijack@naver.com',
        bio: 'I like traveling, exloring',
        city: 'Seoul',
        country: 'Korea');

    users.add(user1);
    users.add(user2);

    Review review = Review();
    review.createReview(user2.createContactFromUser(),
        'Fun guy, would recommend him to others', 4.5, DateTime.now());

    user1.reviews.add(review);

    Conversation conversation = Conversation();
    conversation.createConversation(user2.createContactFromUser(), []);

    Message message1 = Message();
    message1.createMessage(
        user1.createContactFromUser(), 'Hey Wassup', DateTime.now());

    Message message2 = Message();
    message2.createMessage(user2.createContactFromUser(),
        'Hey, it is going well, how have you been?', DateTime.now());

    conversation.messages.add(message1);
    conversation.messages.add(message2);

    user1.conversation.add(conversation);

    Posting posting1 = Posting(
      name: 'Cool Casa',
      type: 'House',
      price: 120,
      description: 'Groovy house ~ ',
      address: '123 West 1 Avenue',
      city: 'Vancouver',
      country: 'Canada',
      host: user1.createContactFromUser(),
    );
    posting1.setImages(['assets/images/apt1.jpg', 'assets/images/apt2.jpg']);
    posting1.amenities = ['washer', 'dryer', 'iron', 'cofffe machine'];
    posting1.beds = {'small': 0, 'medium': 2, 'large': 2};
    posting1.bathrooms = {'full': 2, 'half': 1};

    Posting posting2 = Posting(
      name: 'Cool Casa',
      type: 'House',
      price: 120,
      description: 'Groovy house ~ ',
      address: '123 West 1 Avenue',
      city: 'Vancouver',
      country: 'Canada',
      host: user1.createContactFromUser(),
    );
    posting2.setImages(['assets/images/apt1.jpg', 'assets/images/apt2.jpg']);
    posting2.amenities = ['washer', 'dryer', 'iron', 'Cofffe machine'];
    posting2.beds = {'small': 1, 'medium': 0, 'large': 1};
    posting1.bathrooms = {'full': 1, 'half': 1};

    postings.add(posting1);
    postings.add(posting2);

    Booking booking1 = Booking();
    booking1.createBooking(posting2, user1.createContactFromUser(), [
      DateTime(2019, 08, 20),
      DateTime(2019, 08, 21),
      DateTime(2019, 08, 20),
    ]);

    Booking booking2 = Booking();
    booking2.createBooking(posting2, user1.createContactFromUser(),
        [DateTime(2019, 10, 10), DateTime(2019, 08, 11)]);

    posting2.bookings.add(booking1);

    Review postingReview = Review();
    postingReview.createReview(user2.createContactFromUser(),
        'pretty decent place', 3.5, DateTime(2019, 08, 08));

    posting1.reviews.add(postingReview);

    user1.bookings.add(booking1);
    user1.bookings.add(booking2);

    user1.savedPostings.add(posting2);
  }
}
