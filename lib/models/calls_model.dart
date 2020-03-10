class CallsModel {
  final String name;
  final String time;
  final String avatarUrl;

  CallsModel({this.name, this.time,this.avatarUrl});
}

List<CallsModel> callsData = [
  CallsModel(
      name: 'Andrea Pillay',
      time: '7 March, 2:06 pm',
      avatarUrl: 'https://images.pexels.com/photos/372042/pexels-photo-372042.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    ),
    CallsModel(
      name: 'Muhummud Yusuf',
      time: '2 March, 13.45 pm',
      avatarUrl: 'https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    ),
    CallsModel(
      name: 'Anesh Maharaj',
      time: '29 February, 10:34 am',
      avatarUrl: 'https://images.pexels.com/photos/3775534/pexels-photo-3775534.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    ),
    CallsModel(
      name: 'Marvellous Makuyana',
      time: ' 23 February, 09:50 am',
      avatarUrl: 'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
    ),
];