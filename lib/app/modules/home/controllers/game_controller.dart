import 'dart:math';
import 'package:get/get.dart';
import '../../../../game/marble_game.dart';

class GameController extends GetxController {
  late MarbleGame game;

  var dividend = 24.obs;
  var divisor = 3.obs;

  @override
  void onInit() {
    super.onInit();

    game = MarbleGame(this);
  }

  void generateNewProblem() {
    divisor.value = 3;

    int answerPerBucket = Random().nextInt(7) + 2;

    dividend.value = answerPerBucket * divisor.value;

    game.resetGame(dividend.value);
  }

  void checkAnswer() {
    final results = game.countMarblesInBuckets();

    int targetPerGroup = (dividend.value / divisor.value).round();

    bool isCorrect = true;
    String message = "Jawaban Sempurna! 🎉";

    int totalInBuckets = results.values.fold(0, (sum, count) => sum + count);

    if (totalInBuckets == 0) {
      isCorrect = false;
      message = "Kamu belum memasukkan kelereng ke dalam kotak.";
    } else {
      for (int i = 0; i < 3; i++) {
        int count = results[i] ?? 0;
        if (count != targetPerGroup) {
          isCorrect = false;
          message =
              "Salah!\nSetiap kotak harus berisi $targetPerGroup kelereng.\nKotak ke-${i + 1} berisi $count.";
          break;
        }
      }
    }

    Get.defaultDialog(
      title: isCorrect ? "Benar!" : "Coba Lagi",
      middleText: message,
      textConfirm: "OK",
      confirmTextColor: Get.theme.primaryColorLight,
      onConfirm: () => Get.back(),
      barrierDismissible: false,
    );
  }
}
