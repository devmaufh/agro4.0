import 'package:agroqueretaro/models/apoyosModel.dart';
import 'package:agroqueretaro/widgets/itemMenuSimple.dart';
import 'package:flutter/material.dart';

class ApoyosListView extends StatefulWidget {
  const ApoyosListView({Key key, this.callBack}) : super(key: key);

  final Function callBack;
  @override
  _ApoyosListViewState createState() => _ApoyosListViewState();
}

class _ApoyosListViewState extends State<ApoyosListView>
    with TickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.20,
        width: double.infinity,
        child: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return ListView.builder(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 0, right: 16, left: 16),
                itemCount: ApoyosModel.apoyosList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final int count = ApoyosModel.apoyosList.length > 10
                      ? 10
                      : ApoyosModel.apoyosList.length;
                  final Animation<double> animation =
                      Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                              parent: animationController,
                              curve: Interval((1 / count) * index, 1.0,
                                  curve: Curves.fastOutSlowIn)));
                  animationController.forward();
/*
                  return ApoyosView(
                    apoyo: ApoyosModel.apoyosList[index],
                    animation: animation,
                    animationController: animationController,
                    callback: () {
                      widget.callBack();
                    },
                  );
*/
                return ItemMenuSimple(
                  animation: animation,
                  animationController: animationController,
                  callback: (){
                    print("Holi apoyos");
                  },
                  imageUrl: ApoyosModel.apoyosList[index].urlImage,
                  titleCard: ApoyosModel.apoyosList[index].apoyo,
                );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
