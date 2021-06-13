class Info {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

 Info(
    this.position, {
    this.name,
    this.iconImage,
    this.description,
    this.images,
  });
}

List<Info> motivation = [
  Info(1,
      name: 'Right place',
      
      iconImage: 'assets/ssp.png',
      description:
          "You need to do it in a clean, bright, quiet, ventilated area. Best of all - at a desk with a bright lamp. If you don't have such a place at home, go to the library and sit at a table at the far end of the room, where other visitors will not pass by you every five minutes.",
      images: [
        'https://sevastopolfm.ru/wp-content/uploads/%D1%81%D0%BF%D0%BE%D0%BA%D0%BE%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B5-1.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWwSkVgeGFj6QE_2g0XqWupGYv2ds8akX_E-MqMXnBgGjemP2BkXPwlGzDe15-1-Hfmz4&usqp=CAU']
  ),
        Info(2,
      name: 'Sleep enough',
      iconImage: 'assets/ssp.png',
      description:
          "Before preparing, it is better to gain strength, and not watch TV shows all night long. On the night before the exam, it is also better not to sit over textbooks, but to sleep well: sleep helps to consolidate information in long-term memory. ",
          images: [
         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgebgFFjrWquRXWt2Djx2HQK6UoUvt7iOpYg&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILRrmk39gZ32PhOba34ypwPRjfq1fxuVQAg&usqp=CAU'
        ]),
  Info(3,
      name: 'The questions',
      iconImage: 'assets/ssp.png',
      description:
          "Write a short thesis answer plan, and then speak out loud. This technique will help you analyze, remember and fix information in your memory much better than if you just read it to yourself. ",
           images: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZKhFbPSsm4w6yt7LOb1cM0ds8lYD1afS7WA&usqp=CAU']),
  Info(4,
      name: 'Dark chocolate',
      iconImage: 'assets/ssp.png',
      description:
          "A light cappuccino or latte helps in this case much better than espresso: they contain not only a powerful dose of caffeine, but also carbohydrates that fill you with energy. Power engineers are not the best option. But if you did drink an energy drink, then do not mix it with coffee.",
          images: [
            'https://avatars.mds.yandex.net/get-zen_doc/1877958/pub_5cbd66d583f87500b33493fc_5cbd6a120a13b900b4b7c409/scale_1200',
            'https://knews.kg/wp-content/uploads/2021/04/Gorkij-shokolad.jpg',
            'https://narodna-pravda.ua/wp-content/uploads/2019/07/1005b1f991390f08-575945-9DUUI9fk-1024x577.jpg'
          ]
          ),
          Info(5,
      name: 'Flight mode',
      iconImage: 'assets/ssp.png',
      description:
          " When the question is difficult and you need to focus without being distracted by anything else, this is the best solution.",
           images: ['https://avatars.mds.yandex.net/get-zen_doc/964926/pub_5d2c20a9c7e50c00adbeb3a2_5d2c20c3a1b4f100ac2bf750/scale_1200'
       ,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRem-BtS6xIW7cjJXcFMLLLeB6GFUO-TqnmKw&usqp=CAU']
       ),
];