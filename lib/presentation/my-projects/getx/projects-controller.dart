import 'package:get/get.dart';

class ProjectsController extends GetxController {
  static List<ProjectsEntity> projectsList = [
    ProjectsEntity(
      name: 'Travi',
      desc: 'Travi'
          'It is an app to manage trips'
          'First of all you need to creat an account to use this app..after that you will select the activity do you like'
          'So we can show you trips for you'
          'And then you will see a home screen contains three category offers mean the trip which has an offer for a period of time'
          'And the second category is recommened for you in this section We will display trips compatible with your activities ...'
          'And the third category is most popular'
          'This section contains the trips that has the highest ratings'
          'And there is a search'
          'And trip overview screen'
          'This screen will show you description for the trip and more images and what will happen in this trip ... the activities which the trip contain'
          'and the Weather information at the place of the flight'
          'How many people will be in the journey'
          'And what the type of this journey'
          'Is it for families or for youngs ... and so one'
          'Also it is has a rating and review from another users'
          'And what the areas we will visit in this trip in addition to map that shows us the place you are visiting on the map'
          'Also there is an Weekly and daily schedule of what you will do on this trip'
          'If you use this app and your internet connection destroyed donot worry'
          'We will show you games to play while your internet connection will be restored'
          'Also there is a profile section which containes your ended trip so you can give us a report if the trip wasnot beautiful for you ..'
          'And your next trip screen shows'
          'The trip that you are registered with it'
          'And your information'
          'And your current trip'
          'Well that\'s enough'
          'Have a nice trip'
          '',
      image: 'assets/images/travi-logo.png',
      url:
          'https://play.google.com/store/apps/details?id=com.ahmadalfrehan.travi',
      date: 'date',
    ),
    ProjectsEntity(
      name: 'hewaiti',
      desc:
          'Hewaiti is an exciting competition app designed for students to showcase their skills and connect with other students. Whether you\'re a student looking to compete or a visitor wanting to explore the talent on display, Hewaiti has something for everyone.'
          'To get started, simply register by choosing whether you\'re a student or a visitor. If you\'re a student, you\'ll need to enter your school name, school class, phone number, and up to 3 skills to your profile. Visitors can simply enter their name and email. You can also upload a profile picture to complete your registration.'
          'Once you\'re registered, you can browse other student profiles and rate them based on their skills. The app categorizes students based on their skills, so you can easily find the students with the skills you\'re interested in. If you\'re a visitor, you can rate other students\' skills but cannot add skills to your own profile.'
          'Hewaiti is also integrated with popular social media platforms such as Google, Facebook, and Twitter, so you can register with your existing accounts.'
          'Join the competition and connect with other students on Hewaiti today!'
          '',
      image: 'assets/images/hew-logo.png',
      url:
          'https://play.google.com/store/apps/details?id=com.ahmadalfrehan.hewaiti',
      date: 'date',
    ),
    ProjectsEntity(
      name: 'Clinic management',
      desc:
          'Clinic managment is an app easy to use and enjoyable and equitable and useable and he can store alot of patients and thier details like name and last name and phone number and information about The patient\'s situation and many of ditails .'
          'Also it is support the edit and delete all or delete'
          'by id and quick search and insert the patients and thier details'
          'If you encounter problems with it or want to suggest features, please contact us..'
          'I hope it is help the doctors,',
      image: 'assets/images/clinc-logo.png',
      url:
          'https://play.google.com/store/apps/details?id=com.clinic_managementtt.maybe',
      date: 'date',
    ),
    ProjectsEntity(
      name: 'imagin_true',
      desc: 'imagin true is a chat app'
          '         . By using it you can chat with friends and other users'
          'also it is support notifications and send or receive photos or videos or any other files you want'
          'in addition you can save your files localy in your phone'
          'first of all you need to create an account using email to using this app and it is required a phone number to communicate with your contacts who using the app'
          'also you can edit your profile Which contains profile picture and cover picture and bio and your phone number and your name ...'
          ' if you cannot find your friend in contacts screen you will find them in "all users" screen'
          ' which you can talk with any person that is not in your contacts'
          'finally You can contact us if you have any problems',
      image: 'assets/images/imagin-logo.png',
      url:
          'https://play.google.com/store/apps/details?id=com.ahmad_alfrehan.imagin_true',
      date: 'date',
    ),
    ProjectsEntity(
      name: 'Redsys_with_Flutter',
      desc: 'Redsys with Flutter it is a plugin package that call native code to perform some payment requests for redsys online bank',
      image: '',
      url:
          'https://github.com/ahmedalfrehan/redsys_with_flutter',
      date: 'date',
    ),
  ];
}

class ProjectsEntity {
  String? name;
  String? desc;
  String? image;
  String? url;
  String? date;

  ProjectsEntity({
    required this.name,
    required this.desc,
    required this.image,
    required this.url,
    required this.date,
  });
}
