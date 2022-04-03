import 'package:biodatamicko/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(
      MaterialApp(
        home: MyWidget(),
      ),
    );
  });
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BIODATA DIRI"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Selamat Datang Di Universitas Esa Unggul'
                  '\nProdi Teknik Informatika - Fakultas Ilmu Komputer',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25,),
            Image.asset('assets/image/micko.jpg', width: 300),
            SizedBox(height: 25,),
            Text('Nama             :  Micko Tubagas '
                  '\nNim                :  20190801086'
                  '\nHobby            :  Bernyayi'
                  '\nPerkerjaan    :  Mahasiswa'
                  '\nStatus            :  Belum Menikah',
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}