import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';


class AssignmentController extends GetxController {
  //TODO: Implement AssignmentController

  RxList<String> subtitle = RxList<String>([]);
  RxList<String> content = RxList<String>([]);

  String id = Get.arguments[0];
  String date = Get.arguments[1];

  Future<void> getContent() async{
    var querySnapshot = await FirebaseFirestore.instance.collection('Pertemuan').doc(id)
        .collection('Content').orderBy('id').get();

    subtitle.assignAll(querySnapshot.docs.map((doc) => doc['subtitle']));
    content.assignAll(querySnapshot.docs.map((doc) => doc['text']));

    
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
