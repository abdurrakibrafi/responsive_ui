import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    List<LanguageTitle> titileText = [
      LanguageTitle(
        title: 'Dart',
      ),
      LanguageTitle(title: 'Flutter'),
      LanguageTitle(title: 'JS'),
      LanguageTitle(title: 'Python'),
      LanguageTitle(title: 'Html'),
      LanguageTitle(title: 'CSS'),
      LanguageTitle(title: 'React'),
      LanguageTitle(title: 'API'),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: 65,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Flex(
          direction: isPortrait ? Axis.vertical : Axis.horizontal,
          children: [
            Expanded(
              flex: isPortrait ? 1 : 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: isPortrait ? 200 : 100,
                  child: CircleAvatar(
                    maxRadius: MediaQuery.of(context).size.width / 4,
                    backgroundImage: AssetImage('assets/me.jpg'),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: isPortrait ? 3 : 2,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: isPortrait
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  crossAxisAlignment: isPortrait
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Abdur Rakib Rafi',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                    ),
                    Text(
                      'abdurrakibrafi469@gmail.com',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Container(
                        width: isPortrait ? 350 : 600,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            final LanguageTitle languageTitle =
                                titileText[index];
                            return Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(1, 1),
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 15,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              width: 100,
                              height: 100,
                              child: Card(
                                color: Colors.white,
                                child: Center(
                                  child: Text(
                                    languageTitle.title,
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: isPortrait ? 3 : 5,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageTitle {
  String title;

  LanguageTitle({required this.title});
}
