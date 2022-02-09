import 'package:breakingbad/Data/Model/M_charachter.dart';
import 'package:breakingbad/Logique/cubit/charachter_cubit.dart';
import 'package:breakingbad/Presentation/Widget/griditem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<charachter> allcharechter;

  @override
  void initState() {
    super.initState();
    allcharechter = BlocProvider.of<CharachterCubit>(context).getAllchar();
  }

  Widget BlocWidget() {
    return BlocBuilder<CharachterCubit, CharachterState>(
        builder: (context, state) {
      if (state is Charachterloaded) {
        allcharechter = state.mychar;
        return mygridview();
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }

  Widget mygridview() {
    return Container(
      color: Colors.black87,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 2 / 3),
          itemCount: 60,
          itemBuilder: (context, index) {
            return myitem(
              ch: allcharechter[index],
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Breakingbad'),
      ),
      body: BlocWidget(),
    );
  }
}
