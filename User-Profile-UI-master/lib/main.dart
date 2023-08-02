// Đoạn import sử dụng để import các gói (packages) cần thiết cho ứng dụng.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userprofile/Animation/fade_animation.dart';

// Hàm main() là hàm khởi chạy của ứng dụng.
// MaterialApp là một widget cơ bản của Flutter, giúp quản lý và cung cấp nhiều thuộc tính liên quan đến ứng dụng.
// HomePage() là widget chính của ứng dụng.
void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false, // Loại bỏ dấu hiệu "debug" ở góc trên cùng bên phải màn hình.
    home: HomePage(), // Trang chủ của ứng dụng là HomePage().
  ),
);

// Lớp StatefulWidget HomePage.
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState(); // Tạo ra một State cho HomePage.
}

// Lớp State của HomePage.
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Phương thức build() được gọi mỗi khi giao diện cần được hiển thị hoặc cập nhật.
    return Scaffold(
      // Scaffold là widget cung cấp cấu trúc giao diện cho ứng dụng.
      backgroundColor: Colors.black, // Màu nền của giao diện là đen.
      body: Stack(
        // Sử dụng Stack để chồng các widget lên nhau.
        children: <Widget>[
          // CustomScrollView là một widget cho phép tạo danh sách cuộn tùy chỉnh.
          CustomScrollView(
            slivers: <Widget>[
              // SliverAppBar là một ứng dụng thanh app bar cuộn linh hoạt.
              SliverAppBar(
                expandedHeight: 540, // Đặt chiều cao ban đầu cho app bar.
                backgroundColor: Colors.black, // Màu nền của app bar là đen.
                flexibleSpace: FlexibleSpaceBar(
                  // Phần nội dung linh hoạt của app bar.
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/pic8.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3)
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            // FadeAnimation là một custom widget để tạo hiệu ứng fade-in cho văn bản.
                            FadeAnimation(
                              1,
                              Text(
                                'Geralt of Rivia',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                  1.2,
                                  Text(
                                    'The Witcher 3',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 45,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    'The Witcher: The Last Wish',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // SliverList là một danh sách cuộn linh hoạt.
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                          1.6,
                          Text(
                            'Geralt of Rivia (Polish: Geralt z Rivii) is a fictional character and the protagonist of The Witcher series of short stories and novels by Polish author Andrzej Sapkowski. He is a magically enhanced monster-hunter known as a "witcher", who possesses supernatural abilities due to his mutations. He was described by Péter Apor as a character embodying "the neo-liberal anti-politics" spirit of Polish popular culture of the 1990s, following his debut in the books.',
                            style: TextStyle(
                              color: Colors.grey,
                              height: 1.4,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        FadeAnimation(
                          1.6,
                          Text(
                            'Major regions',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                          1.6,
                          Text(
                            '15th 1990s, The Skellige Isles.',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FadeAnimation(
                          1.6,
                          Text(
                            'Best Secret Videos',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.8,
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                makeVideo(image: 'assets/images/pic9.jpg'),
                                makeVideo(image: 'assets/images/pic3.jpg'),
                                makeVideo(image: 'assets/images/pic1.jpg'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 120,
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeAnimation(
                  2,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.deepPurpleAccent[700],
                    ),
                    child: Align(
                      child: Text(
                        'Follow',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Hàm tạo widget Video.
  Widget makeVideo({image}) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: EdgeInsets.only(
          right: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),
              ],
            ),
          ),
          child: Align(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
