import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:upcoming_movies/controllers/controller.dart';
import 'package:upcoming_movies/theme.dart';

class UpcomingMovies extends StatefulWidget {
  const UpcomingMovies({Key? key}) : super(key: key);

  @override
  _UpcomingMoviesState createState() => _UpcomingMoviesState();
}

class _UpcomingMoviesState extends StateMVC<UpcomingMovies> {

  Controller controller = Controller();
  _UpcomingMoviesState() : super(Controller());

  @override
  void initState() {
    // TODO: implement initState
    controller.upcomingMovies();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Upcoming Movie',
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
          color: AppTheme.darkOnPrimaryColor,
          child: controller.modelList.length>0 ? ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: controller.modelList.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(5),
                  height: 180,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: AppTheme.lightPrimaryColor,
                    elevation: 10,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Expanded(
                            flex: 1,
                            child: Container(
                              height: 150.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    controller.modelList[index].poster_path,
                                ),
                              ),
                            ),
                            // child:FittedBox(
                            //   child:
                            //     Image.network('https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI',fit: BoxFit.fill,)
                            // ),
                          ),
                        ),),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(controller.modelList[index].title),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  (() {
                                    // your code here
                                    if (controller.modelList[index].adult){
                                      return 'Adult';
                                    }
                                    else {
                                      return 'Non Adult';
                                    }
                                  }())
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Container(
                            height: 60,
                            width: 100,
                            child: Expanded(
                              flex: 1,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.zero,
                                            side: BorderSide(
                                                color: Colors.white, width: 2.0)))),
                                child: Text('Book Now'),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }) : Center(child: CircularProgressIndicator(
            valueColor:AlwaysStoppedAnimation<Color>(Colors.white),
          )),
          // child: Center(child: Text('${controller.modelList.length}',style: TextStyle(
          //   color: Colors.white,fontSize: 24
          // ),)),
        ),
      ),
    );
  }
}
