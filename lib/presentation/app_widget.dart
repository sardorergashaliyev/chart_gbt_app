import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, data) {
            if (data.data == ConnectivityResult.mobile ||
                data.data == ConnectivityResult.wifi) {
              return const YandexMap();
              // return BlocProvider(
              //   create: (context) => HomeCubit(),
              //   child: const HomePage(),
              // );
            } else {
              return Container();
              // return const NoInternetPage();
            }
          }),
    );
  }
}
