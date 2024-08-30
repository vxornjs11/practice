import 'package:flutter/material.dart';
import 'package:practice_01_app/main.dart';
import 'package:practice_01_app/provinder/color_provinder.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  /// 이제 알람, 반복기능을 설정안하고 등록할때 생기는 문제나
  /// 글자수 제한 이런거 생각해보고.

  /// -- 반복설정 하고나면 텍스트필드 값이 사라지네 이것도 저장해서 파라미터로 넘겨야겟다.
  ///
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool color_select = false;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size cSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: cSize.height * 0.08,
          ),
          Consumer<ColorProvider>(builder: (context, colorProvider, child) {
            return Container(
              height: cSize.height * 0.8,
              width: cSize.width * 1,
              decoration: BoxDecoration(
                color: colorProvider.backgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: colorProvider.backgroundColor)),
                    // GestureDetector(
                    //   onTap: () {
                    //     setState(() {
                    //       color_select = !color_select;
                    //       print(color_select);
                    //     });
                    //   },
                    //   child: Container(
                    //     height: cSize.height * 0.075,
                    //     width: cSize.width * 1,
                    //     decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.circular(15)),
                    //     child: Row(
                    //       children: [
                    //         Icon(Icons.palette),
                    //         Text("색 메타"),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     setState(() {
                    //       color_select = !color_select;
                    //       print(color_select);
                    //     });
                    //   },
                    //   child: AnimatedContainer(
                    //     duration: Duration(milliseconds: 300),
                    //     height: color_select
                    //         ? cSize.height * 0.3
                    //         : cSize.height * 0.1, // 애니메이션으로 등장할 높이
                    //     // 이거보다 그냥 색 메타 저기를 밀고 내려오는게 더 나을듯.
                    //     curve: Curves.easeInOut, // 부드러운 등장 효과
                    //     child: color_select
                    //         ? Column(
                    //             children: [
                    //               Container(
                    //                 height: cSize.height * 0.3,
                    //                 width: cSize.width * 1,
                    //                 decoration: BoxDecoration(
                    //                     color: Colors.white,
                    //                     borderRadius:
                    //                         BorderRadius.circular(15)),
                    //                 child: Column(
                    //                   children: [
                    //                     Row(
                    //                       children: [
                    //                         Icon(Icons.palette),
                    //                         Text("색 메타"),
                    //                       ],
                    //                     ),
                    //                     SizedBox(
                    //                       height: cSize.height * 0.05,
                    //                     ),
                    //                     _buildColorButton(Colors.amber,
                    //                         "yellow", colorProvider),
                    //                     _buildColorButton(
                    //                         Colors.blue, "blue", colorProvider),
                    //                     _buildColorButton(
                    //                         Color.fromARGB(255, 230, 242, 255),
                    //                         "기본 약하늘",
                    //                         colorProvider),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           )
                    //         : Container(
                    //             height: cSize.height * 0.075,
                    //             width: cSize.width * 1,
                    //             decoration: BoxDecoration(
                    //                 color: Colors.white,
                    //                 borderRadius: BorderRadius.circular(15)),
                    //             child: Row(
                    //               children: [
                    //                 Icon(Icons.palette),
                    //                 Text("색 메타"),
                    //               ],
                    //             ),
                    //           ),
                    //   ),
                    // ),
                    // // color_select == false
                    // //     ? SizedBox()
                    // //     : Column(
                    // //         children: [
                    // //           _buildColorButton(
                    // //               Colors.amber, "yellow", colorProvider),
                    // //           _buildColorButton(
                    // //               Colors.blue, "blue", colorProvider),
                    // //           _buildColorButton(
                    // //               Color.fromARGB(255, 230, 242, 255),
                    // //               "기본 약하늘",
                    // //               colorProvider),
                    //         ],
                    //       )
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          color_select = !color_select;
                          print(color_select);
                        });
                      },
                      child: color_select
                          ? Container(
                              height: cSize.height * 0.075,
                              width: cSize.width * 1,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: [
                                  Icon(Icons.palette),
                                  Text("색 메타"),
                                ],
                              ),
                            )
                          : Container(
                              height: cSize.height * 0.25,
                              width: cSize.width * 1,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: cSize.height * 0.025,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.palette),
                                      Text("색 메타"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: cSize.height * 0.025,
                                  ),
                                  _buildColorButton(
                                      Colors.amber, "yellow", colorProvider),
                                  _buildColorButton(
                                      Colors.blue, "blue", colorProvider),
                                  _buildColorButton(
                                      Color.fromARGB(255, 230, 242, 255),
                                      "기본 약하늘",
                                      colorProvider),
                                ],
                              ),
                            ),
                    ),
                    Container(
                      height: cSize.height * 0.075,
                      width: cSize.width * 1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Icon(Icons.palette),
                          Text("색 메타"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
          // Text(" Text('User ID: ${UserManager.userId}'),"),
        ],
      ),
    );
  }

  Widget _buildColorButton(Color color, String label, colorProvider) {
    return Container(
      color: color,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            // Example of changing the background color
            colorProvider.changeBackgroundColor(
              newColor: color,
            );
          },
          child: Text(label),
        ),
      ),
    );
  }
}
