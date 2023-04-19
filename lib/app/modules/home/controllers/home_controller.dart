import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sistem_operasi/app/data/model_card.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxList<PertemuanCard> card = RxList<PertemuanCard>([]);

  void getCard() async{
    var querySnapshot = await FirebaseFirestore.instance.collection('Pertemuan').get();

    card.value = querySnapshot.docs.map((doc){
      return PertemuanCard(
          title: doc['title'],
          imageUrl: doc['imageUrl'],
          id: doc['id'],
          date: doc['date']
      );
    }).toList();

  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getCard();
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
