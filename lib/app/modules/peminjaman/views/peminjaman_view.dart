import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PeminjamanView'),
        centerTitle: true,
      ),
        body: controller.obx((state) => ListView.separated(
            itemCount: state!.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(" Judul buku ${state[index].book?.judul}"),
                subtitle: Text("Peminjam ${state[index].tanggalPinjam}"),
              );
            },
            separatorBuilder: (context, index){
              return Divider();
            }
        ))
    );
  }
}
