// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(15, 20, 15, 60),
//           child: Stack(
//             clipBehavior: Clip.none,
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 width: double.infinity,
//                 height: double.infinity,
//                 decoration: BoxDecoration(
//                   color: const Color(0XFFF296EB),
//                   borderRadius: BorderRadius.circular(35),
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Color(0XFFBB4BB3),
//                       offset: Offset(8, 8),
//                       blurRadius: 0,
//                     ),
//                   ],
//                 ),
//                 child: Stack(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Column(
//                         children: [
//                           Container(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 8),
//                             decoration: BoxDecoration(
//                               color: const Color(0xFFBA59B4),
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             child: const Text(
//                               "Find the result of the division",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           Container(
//                             width: double.infinity,
//                             padding: const EdgeInsets.symmetric(vertical: 20),
//                             decoration: BoxDecoration(
//                               color: const Color(0xFF7B4EA2),
//                               borderRadius: BorderRadius.circular(20),
//                               boxShadow: const [
//                                 BoxShadow(
//                                     color: Color(0xFF5A367A),
//                                     offset: Offset(0, 8),
//                                     blurRadius: 0),
//                               ],
//                             ),
//                             child: const Center(
//                               child: Text(
//                                 "24 ÷ 3",
//                                 style: TextStyle(
//                                     fontSize: 60,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                       top: 180,
//                       left: 0,
//                       right: 0,
//                       child: Center(
//                         child: Container(
//                           width: 70,
//                           height: 35,
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF5A367A),
//                             borderRadius: BorderRadius.circular(10),
//                             boxShadow: const [
//                               BoxShadow(
//                                 color: Color(0xFF3E2355),
//                                 offset: Offset(0, 4),
//                                 blurRadius: 0,
//                               ),
//                             ],
//                           ),
//                           child: const Center(
//                             child: Text(
//                               "=",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 0,
//                       top: 230,
//                       bottom: 40,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           _buildSideButtonInside(
//                               color: const Color(0xFFE7AB79),
//                               shadowColor: const Color(0xFFC48B5D)),
//                           _buildSideButtonInside(
//                               color: const Color(0xFFE7E986),
//                               shadowColor: const Color(0xFFC3C565)),
//                           _buildSideButtonInside(
//                               color: const Color(0xFF83E0E9),
//                               shadowColor: const Color(0xFF5ABCC5)),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 bottom: -30,
//                 child: Container(
//                   width: Get.width * 0.7,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: const Color(0xFF77C88D),
//                     borderRadius: BorderRadius.circular(30),
//                     border:
//                         Border.all(color: const Color(0xFF5A9B6B), width: 2),
//                     boxShadow: const [
//                       BoxShadow(
//                           color: Color(0xFF5A9B6B),
//                           offset: Offset(0, 6),
//                           blurRadius: 0),
//                     ],
//                   ),
//                   child: const Center(
//                     child: Text(
//                       "Check Answer",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSideButtonInside(
//       {required Color color, required Color shadowColor}) {
//     return Container(
//       width: 45,
//       height: 90,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//               color: shadowColor, offset: const Offset(4, 0), blurRadius: 0),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flame/game.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../controllers/game_controller.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Inisialisasi Controller
//     final controller = Get.put(GameController());

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(15, 20, 15, 60),
//           child: Stack(
//             clipBehavior: Clip.none,
//             alignment: Alignment.center,
//             children: [
//               // CONTAINER UTAMA (BACKGROUND)
//               Container(
//                 width: double.infinity,
//                 height: double.infinity,
//                 decoration: BoxDecoration(
//                   color: const Color(0XFFF296EB),
//                   borderRadius: BorderRadius.circular(35),
//                   boxShadow: const [
//                     BoxShadow(
//                         color: Color(0XFFBB4BB3),
//                         offset: Offset(8, 8),
//                         blurRadius: 0),
//                   ],
//                 ),
//                 // ClipRRect PENTING agar game tidak tembus rounded corner
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(35),
//                   child: Stack(
//                     children: [
//                       // --- GAME LAYER (FISIKA) ---
//                       Positioned.fill(
//                         // Padding agar kelereng tidak menabrak UI bagian atas
//                         child: Padding(
//                           padding: const EdgeInsets.only(top: 160, bottom: 80),
//                         ),
//                       ),

//                       // --- UI LAYER (TOMBOL & TEXT) ---
//                       Padding(
//                         padding: const EdgeInsets.all(20.0),
//                         child: Column(
//                           children: [
//                             // Tombol Header
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 8),
//                               decoration: BoxDecoration(
//                                 color: const Color(0xFFBA59B4),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               child: const Text(
//                                 "Find the result of the division",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                             const SizedBox(height: 20),

//                             // Tampilan Soal (Reactive dengan Obx)
//                             GestureDetector(
//                               onTap: controller
//                                   .generateNewProblem, // Tap soal untuk reset
//                               child: Container(
//                                 width: double.infinity,
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 20),
//                                 decoration: BoxDecoration(
//                                   color: const Color(0xFF7B4EA2),
//                                   borderRadius: BorderRadius.circular(20),
//                                   boxShadow: const [
//                                     BoxShadow(
//                                         color: Color(0xFF5A367A),
//                                         offset: Offset(0, 8),
//                                         blurRadius: 0),
//                                   ],
//                                 ),
//                                 child: Center(
//                                   child: Obx(() => Text(
//                                         "${controller.dividend} ÷ ${controller.divisor}",
//                                         style: const TextStyle(
//                                             fontSize: 60,
//                                             fontWeight: FontWeight.bold,
//                                             color: Colors.white),
//                                       )),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),

//                       // Tanda Sama Dengan
//                       Positioned(
//                         top: 180,
//                         left: 0,
//                         right: 0,
//                         child: Center(
//                           child: Container(
//                             width: 70,
//                             height: 35,
//                             decoration: BoxDecoration(
//                               color: const Color(0xFF5A367A),
//                               borderRadius: BorderRadius.circular(10),
//                               boxShadow: const [
//                                 BoxShadow(
//                                     color: Color(0xFF3E2355),
//                                     offset: Offset(0, 4),
//                                     blurRadius: 0)
//                               ],
//                             ),
//                             child: const Center(
//                                 child: Text("=",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 24,
//                                         fontWeight: FontWeight.bold))),
//                           ),
//                         ),
//                       ),

//                       // Indikator Warna di Kiri (Hanya Visual)
//                       Row(
//                         children: [
//                           Positioned(
//                             left: 10,
//                             top: 230,
//                             bottom: 40,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 _buildSideButtonInside(
//                                     color: const Color(0xFFE7AB79),
//                                     shadowColor: const Color(0xFFC48B5D)),
//                                 _buildSideButtonInside(
//                                     color: const Color(0xFFE7E986),
//                                     shadowColor: const Color(0xFFC3C565)),
//                                 _buildSideButtonInside(
//                                     color: const Color(0xFF83E0E9),
//                                     shadowColor: const Color(0xFF5ABCC5)),
//                               ],
//                             ),
//                           ),
//                           GameWidget(game: controller.game),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               // Tombol Check Answer
//               Positioned(
//                 bottom: -30,
//                 child: GestureDetector(
//                   onTap: controller.checkAnswer,
//                   child: Container(
//                     width: Get.width * 0.7,
//                     height: 60,
//                     decoration: BoxDecoration(
//                       color: const Color(0xFF77C88D),
//                       borderRadius: BorderRadius.circular(30),
//                       border:
//                           Border.all(color: const Color(0xFF5A9B6B), width: 2),
//                       boxShadow: const [
//                         BoxShadow(
//                             color: Color(0xFF5A9B6B),
//                             offset: Offset(0, 6),
//                             blurRadius: 0)
//                       ],
//                     ),
//                     child: const Center(
//                       child: Text("Check Answer",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold)),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSideButtonInside(
//       {required Color color, required Color shadowColor}) {
//     // Opacity dikurangi agar kelereng terlihat saat masuk ke area ini
//     return Container(
//       width: 45,
//       height: 90,
//       decoration: BoxDecoration(
//         color: color.withOpacity(0.6),
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: Colors.white.withOpacity(0.5), width: 2),
//       ),
//     );
//   }
// }

import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/game_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GameController());

    // Ukuran Layar
    double screenH = Get.height;
    double screenW = Get.width;

    // Layout Kalkulasi
    double topAreaHeight = screenH * 0.32; // Area Header Ungu
    double bucketH = screenH * 0.12; // Tinggi Kontainer
    double bucketW = 55.0; // Lebar Kontainer
    double bucketGap = screenH * 0.02; // Jarak Antar Kontainer

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 60),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              // 1. BACKGROUND PINK
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0XFFF296EB),
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0XFFBB4BB3),
                        offset: Offset(8, 8),
                        blurRadius: 0),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Stack(
                    children: [
                      Positioned(
                        top: Get.height * 0.5, // turun lebih jauh
                        bottom: 60, // beri ruang bawah lebih kecil
                        left: Get.width * 0.35,
                        right: 10,
                        child: GameWidget(game: controller.game),
                      ),

                      // 3. UI OVERLAY (SOAL & KONTAINER)

                      // A. Header & Soal
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              decoration: BoxDecoration(
                                color: const Color(0xFFBA59B4),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                  "Find the result of the division",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(height: screenH * 0.02),
                            GestureDetector(
                              onTap: controller.generateNewProblem,
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                    vertical: screenH * 0.02),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF7B4EA2),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color(0xFF5A367A),
                                        offset: Offset(0, 8),
                                        blurRadius: 0)
                                  ],
                                ),
                                child: Center(
                                  child: Obx(() => Text(
                                        "${controller.dividend} ÷ ${controller.divisor}",
                                        style: TextStyle(
                                            fontSize: screenH * 0.07,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // B. Kontainer Warna (Kiri)
                      Positioned(
                        left: 15,
                        top: topAreaHeight + 20,
                        child: Column(
                          children: [
                            _buildBucket3D(const Color(0xFFE7AB79),
                                const Color(0xFFC48B5D), bucketW, bucketH),
                            SizedBox(height: bucketGap),
                            _buildBucket3D(const Color(0xFFE7E986),
                                const Color(0xFFC3C565), bucketW, bucketH),
                            SizedBox(height: bucketGap),
                            _buildBucket3D(const Color(0xFF83E0E9),
                                const Color(0xFF5ABCC5), bucketW, bucketH),
                          ],
                        ),
                      ),

                      // C. Tanda Sama Dengan (=)
                      Positioned(
                        top: topAreaHeight - 20,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            width: 70,
                            height: 35,
                            decoration: BoxDecoration(
                              color: const Color(0xFF5A367A),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0xFF3E2355),
                                    offset: Offset(0, 4),
                                    blurRadius: 0)
                              ],
                            ),
                            child: const Center(
                                child: Text("=",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // 4. TOMBOL CHECK ANSWER
              Positioned(
                bottom: -30,
                child: GestureDetector(
                  onTap: controller.checkAnswer,
                  child: Container(
                    width: screenW * 0.7,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xFF77C88D),
                      borderRadius: BorderRadius.circular(30),
                      border:
                          Border.all(color: const Color(0xFF5A9B6B), width: 3),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xFF5A9B6B),
                            offset: Offset(0, 6),
                            blurRadius: 0)
                      ],
                    ),
                    child: const Center(
                      child: Text("Check Answer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBucket3D(Color color, Color shadowColor, double w, double h) {
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: const Offset(4, 4),
            blurRadius: 0,
          ),
        ],
      ),
    );
  }
}
