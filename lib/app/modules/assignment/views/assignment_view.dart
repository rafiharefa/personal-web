import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/assignment_controller.dart';

class AssignmentView extends GetView<AssignmentController> {
  const AssignmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Assignment'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 250,vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(3)
                      ),
                      child: Text('Pertemuan 7', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: Colors.black)),
                    ),
                    SizedBox(height: 10),
                    Text('CONCURRENCY IN OPERATING SYSTEM', style: GoogleFonts.poppins(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black)),
                    SizedBox(height: 10),
                    Text('BY RISYAD RAFI / APRIL 13, 2023',style: GoogleFonts.poppins(fontSize: 15, color: Colors.black45) ),
                    SizedBox(height: 100),

                    Row(
                      children: [
                        Text('What Is It?', style: GoogleFonts.poppins(fontSize: 25), textAlign: TextAlign.left,),
                      ],
                    ),
                    Text('Concurrency atau keselarasan dalam sistem operasi mengacu pada kemampuan sistem operasi untuk menjalankan beberapa proses atau tugas secara bersamaan dengan membagi sumber daya yang tersedia seperti CPU, memori, dan I/O devices. Namun, hal ini seringkali menimbulkan masalah seperti deadlock, mutual exclusion, dan produser-konsumer problem. Permasalahan dalam concurrency terjadi ketika beberapa proses saling bersaing dalam mengakses sumber daya yang sama tanpa adanya mekanisme untuk berkoordinasi. Akibatnya, kinerja prosesor dapat menjadi lambat jika salah satu proses tidak berbagi sumber daya.\n\nAda dua permasalahan umum dalam concurrency, yaitu produser-konsumer problem dan leader-waiter problem. Produser-konsumer problem terjadi ketika dua atau lebih proses menggunakan satu buffer yang sama, dan salah satu proses berperan sebagai produser, sedangkan yang lain berperan sebagai konsumer. Kondisi ini bisa menyebabkan ketidaksesuaian data dan penggunaan sumber daya yang tidak efisien. Leader-waiter problem terjadi ketika ada beberapa proses yang ingin memasuki area kritis atau melakukan tugas yang sama, dan salah satu proses harus memimpin proses lainnya.\n\nUntuk mengatasi masalah dalam concurrency, protokol diperlukan untuk menghindari persaingan antara aktor yang terlibat dalam konferensi. Protokol tersebut mencakup metode yang diterapkan untuk mengontrol akses ke sumber daya dan mengatur komunikasi antar proses. Selain itu, ada beberapa teknik untuk mengatasi masalah deadlock, seperti mengabaikannya, mendeteksi dan memperbaiki, penghindaran, dan pengalokasian sumber daya yang baik dengan menggunakan protokol pengaturan untuk memastikan sistem tidak pernah memasuki keadaan deadlock.\n\nAlgoritma Banker digunakan untuk mencegah terjadinya deadlock dengan mempertimbangkan jumlah sumber daya yang tersedia dan jumlah sumber daya yang diminta oleh proses. Algoritma ini digunakan untuk mengalokasikan sumber daya yang dibutuhkan oleh setiap proses dengan mempertimbangkan kebutuhan sumber daya dan memastikan bahwa sumber daya yang dipakai oleh satu proses tidak mengganggu sumber daya yang dibutuhkan oleh proses lainnya.\n\nKonsep ini memegang dan menunggu juga terkait dengan deadlock, di mana sebuah proses memegang sumber daya dan proses lain harus menunggu hingga sumber daya tersebut dilepaskan oleh proses yang sedang dijalankan.\n\nDalam kesimpulannya, concurrency adalah konsep yang sangat penting dalam sistem operasi yang memungkinkan beberapa tugas atau proses berjalan secara bersamaan dengan membagi sumber daya. Namun, masalah seperti deadlock dan persaingan antar proses dalam mengakses sumber daya yang sama dapat menghambat kinerja sistem. Oleh karena itu, diperlukan protokol dan teknik untuk mengatasi masalah dalam concurrency dan mencegah terjadinya deadlock.',
                    style: GoogleFonts.poppins(), textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 50),
                    Row(
                      children: [
                        Text('Mutual Eclusion, Deadlock, Starvation, Data Koherensi', style: GoogleFonts.poppins(fontSize: 25), textAlign: TextAlign.left,),
                      ],
                    ),
                    Text('- Mutual Exclusion: Konsep di mana hanya satu proses yang dapat mengakses sumber daya bersama pada satu waktu tertentu. Tujuannya adalah untuk menghindari konflik atau intervensi antar proses yang dapat mengakibatkan kesalahan atau ketidakstabilan sistem.\n\n- Deadlock: Kondisi di mana dua atau lebih proses saling menunggu satu sama lain untuk sumber daya yang sedang digunakan oleh proses lain, sehingga mereka tidak dapat melanjutkan eksekusi. Ini dapat terjadi ketika proses menahan sumber daya sementara menunggu sumber daya lain yang dipegang oleh proses lain.\n\n- Starvation: Kondisi di mana suatu proses tidak dapat mengakses sumber daya yang diperlukan untuk melanjutkan eksekusi karena sumber daya tersebut terus-menerus digunakan oleh proses lain.\n\n- Data Koherensi: Konsep di mana semua prosesor dalam sistem komputer memiliki akses ke data yang sama dan informasi yang akurat. Ini dilakukan dengan memastikan bahwa setiap prosesor mengakses data yang diperbarui dan valid.'
                      ,style: GoogleFonts.poppins(), textAlign: TextAlign.left,
                    ),

                    SizedBox(height: 100),
                    Row(
                      children: [
                        Text('How to handle it?', style: GoogleFonts.poppins(fontSize: 25), textAlign: TextAlign.left,),
                      ],
                    ),
                    Text("-  Mutual Exclusion: Sistem komputer dapat mengelola masalah ini dengan teknik locking, yaitu memberikan sinyal atau penguncian pada sumber daya bersama sehingga hanya satu proses yang dapat menggunakannya pada suatu waktu tertentu.\n\n- Deadlock: Beberapa teknik yang dapat digunakan untuk menangani deadlock adalah algoritma Banker's, time-out, dan pembatalan pemrosesan. Algoritma Banker's digunakan untuk mencegah deadlock dengan memastikan bahwa proses hanya memulai ketika sumber daya yang dibutuhkan tersedia, sementara time-out dan pembatalan pemrosesan digunakan untuk menghentikan proses yang terjebak dalam deadlock.\n\n- Starvation: Sistem komputer dapat menangani masalah ini dengan menggunakan algoritma antrian prioritas atau time-out. Dalam algoritma antrian prioritas, proses yang lebih penting memiliki prioritas lebih tinggi dalam akses sumber daya, sementara time-out digunakan untuk menghentikan proses yang mengambil terlalu lama untuk mengakses sumber daya.\n\n- Data Koherensi: Beberapa teknik yang digunakan untuk memastikan data koherensi adalah mesin state, protokol koherensi cache, dan cache coherence directory. Mesin state melacak status penggunaan memori, protokol koherensi cache memastikan bahwa data yang diambil dari memori adalah data terbaru dan cache coherence directory memungkinkan prosesor untuk berkomunikasi satu sama lain untuk memastikan bahwa data yang diakses valid dan up-to-date.",
                      style: GoogleFonts.poppins(), textAlign: TextAlign.left,
                    ),

                  ],
                ),
              ),

              SizedBox(height: 50),

              Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
