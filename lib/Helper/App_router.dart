// ignore_for_file: non_constant_identifier_names

import 'package:breakingbad/Data/Api/API_charchter.dart';
import 'package:breakingbad/Data/Repository/charchterReposotry.dart';
import 'package:breakingbad/Helper/Strings.dart';
import 'package:breakingbad/Logique/cubit/charachter_cubit.dart';
import 'package:breakingbad/Presentation/Screens/HomeCharachter.dart';
import 'package:breakingbad/Presentation/Screens/detailsCharachter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CharachterREPO charachterREPO;
  late CharachterCubit charachterCubit;

  AppRouter() {
    charachterREPO = CharachterREPO(charachterAPI());
    charachterCubit = CharachterCubit(charachterREPO);
  }

  Route? GeneratorRouter(RouteSettings settings) {
    switch (settings.name) {
      case R_homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => CharachterCubit(charachterREPO),
            child: const HomeScreen(),
          ),
        );
      case R_DetailsScreen:
        return MaterialPageRoute(builder: (_) => const DetailsScreen());
    }
  }
}
