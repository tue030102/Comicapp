import 'package:flutter/material.dart';
import 'fullchapter.dart';
//import 'package:flutter_application_1/account.dart';
//import 'package:flutter_application_1/chapterfull.dart';
//import 'package:flutter_application_1/fullchapterkhac.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          child:  Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    height: size.height * .4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image:  AssetImage("assets/bg.png"),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        )
                    ),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: size.height * .0),
                            BookInfo(),
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height *.4 - 30),
                    child: Column(
                      children: <Widget>[
                        ChapterCard(
                          name: 'Money',
                          chapterNumber: 1,
                          tag: 'Life is about change',

                        ),
                        ChapterCard(
                          name: 'Money',
                          chapterNumber: 2,
                          tag: 'Life is about change',

                        ),
                        ChapterCard(
                          name: 'Money',
                          chapterNumber: 3,
                          tag: 'Life is about change',

                        ),
                        ChapterCard(
                          name: 'Money',
                          chapterNumber: 4,
                          tag: 'Life is about change',

                        ),
                        ChapterCard(
                          name: 'Money',
                          chapterNumber: 5,
                          tag: 'Life is about change',

                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Color.fromARGB(255, 197, 197, 197),
          iconSize: 24.0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home page'),
            BottomNavigationBarItem(
                icon: Icon(Icons.note_alt_rounded), label: 'Truyện yêu thích'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Tài khoản',
            ),
          ],
          //onTap: (int index) {
          // if (index == 0) {
          // Navigator.push(
          // context,
          //MaterialPageRoute(
          //builder: (context) => ChapterDetailPage(chapterName: '',),
          //),
          //);
          //} else if (index == 1) {
          // Điều hướng đến trang QLDM khi ấn vào mục Lịch sử đơn mua
          //Navigator.push(
          //context,
          //MaterialPageRoute(
          //builder: (context) => FullChapter(chapterName: '',),
          // ),
          //);
          //} else if (index == 2) {
          // Điều hướng đến trang AccountPage khi ấn vào mục Tài khoản
          //Navigator.push(
          //context,
          //MaterialPageRoute(
          //  builder: (context) => AccountPage(),
          // ),
          //);
          //  }
          //  },
        )
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;

  const ChapterCard({
    Key? key,
    required this.name,
    required this.tag,
    required this.chapterNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        // Navigate to FullChapter screen when the card is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullChapter(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        margin: EdgeInsets.only(bottom: 16),
        width: size.width - 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 33,
              color: Color(0XFFD3D3D3).withOpacity(.84),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Chapter $chapterNumber : $name \n",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: tag,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "The Eternal",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text("Supreme",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(children: <Widget>[Expanded(
                child: Column(children: <Widget>[
                  Text(
                    "When the earth was flat andeveryone wanted to wining with an A mfdjjji kjg dkdkk kdjf jdhfjd uhufdf hudh huufh huudhf hdfgdf",
                    maxLines: 5,
                    style: TextStyle(
                      fontSize: 10,

                    ),
                  ),
                ],
                ),
              ),

              ],
              ),
            ],
          ),
        ),
        Image.asset("assets/tile3.jpg",
        height: 200,
        width: 210,
        ),
      ],
    );
  }
}