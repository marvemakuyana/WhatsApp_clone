class StatusModel {
  String avatarUrl;
  String name;
  String time;
  //String message;

  StatusModel({this.avatarUrl, this.name, this.time});
}
List<StatusModel> statusData = [
  
  StatusModel(
    avatarUrl: 'https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    name: 'Muhummud Yusuf',
    time: '33 minutes ago',
  ),
  StatusModel(
    avatarUrl: 'https://images.pexels.com/photos/414860/pexels-photo-414860.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    name: 'Andrea Pillay',
    time: 'Today, 10:28 am',
  ),
  StatusModel(
    avatarUrl: 'https://images.pexels.com/photos/2681319/pexels-photo-2681319.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    name: 'Marvellous Makuyana',
    time: 'Yesterday, 9:37 pm',
  ),
  StatusModel(
    avatarUrl:'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500' ,
    name: 'Anesh Maharaj',
    time: 'Yesterday, 8:24 pm',
  ),
  
];