import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class exercise1 extends StatelessWidget {
  const exercise1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.brown,
        margin: EdgeInsets.all(10),
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 9, //អ័ក្សX
          crossAxisSpacing: 9, //អ័ក្សY
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.amber,
                child: Icon(
                  Icons.window,
                  color: Colors.white,
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.blue,
                child: Icon(
                  Icons.window,
                  color: Colors.white,
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: Container(
                child: StaggeredGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 9,
                  crossAxisSpacing: 9,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 4,
                      child: Container(
                        color: Colors.blue,
                        child: Icon(
                          Icons.window,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: Container(
                        color: Colors.blue,
                        child: Icon(
                          Icons.window,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 4,
                      child: Container(
                        color: Colors.blue,
                        child: Icon(
                          Icons.window,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: Container(
                        color: Colors.blue,
                        child: Icon(
                          Icons.window,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.blue,
                child: Icon(
                  Icons.window,
                  color: Colors.white,
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.blue,
                child: Icon(
                  Icons.window,
                  color: Colors.white,
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.blue,
                child: Icon(
                  Icons.window,
                  color: Colors.white,
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.blue,
                child: Icon(
                  Icons.window,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
