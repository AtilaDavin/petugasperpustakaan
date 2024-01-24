import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/addbook_controller.dart';

class AddbookView extends GetView<AddbookController> {
  const AddbookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddbookView'),
        centerTitle: true,
      ),
      body: Center(
    child: Form(
    key: controller.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: controller.judulController,
            decoration: InputDecoration(hintText: "Masukkan Judul"),
            validator: (value){
              if (value!.isEmpty){ // untuk minim username
                return "Judul tidak boleh kosong";
              }
              return null;
            },
          ),
          TextFormField(
            controller: controller.penulisController,
            decoration: InputDecoration(hintText: "Masukkan Penulis"),
            validator: (value){
              if (value!.isEmpty){ // untuk minimamal password
                return "Penulis tidak boleh kosong";
              }
              return null;
            },
          ),  TextFormField(
            controller: controller.penerbitController,
            decoration: InputDecoration(hintText: "Masukkan Penerbit"),
            validator: (value){
              if (value!.isEmpty){ // untuk minim username
                return "Penerbit tidak boleh kosong";
              }
              return null;
            },
          ),
          TextFormField(
            controller: controller.tahunterbitController,
            decoration: InputDecoration(hintText: "Masukkan TahunTerbit"),
            validator: (value){
              if (value!.isEmpty){ // untuk minimamal password
                return "TahunTerbit tidak boleh kosong";
              }
              return null;
            },
          ),
          Obx(() => controller.loading.value?
          CircularProgressIndicator():
          ElevatedButton(onPressed: (){
            controller.post();
          }, child: Text("Tambah"))
          )
        ],
      ),
    ),
    ),
    );
  }
}
