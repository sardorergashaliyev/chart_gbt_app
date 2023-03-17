
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';



class AppWidget extends StatelessWidget {
   AppWidget({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, data) {
            if (data.data == ConnectivityResult.mobile ||
                data.data == ConnectivityResult.wifi) {
              return Container();
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




