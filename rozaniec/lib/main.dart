import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';


void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Różaniec',
    theme: ThemeData(
      primaryColor: Colors.purple,
    ) ,
    home: FoldingCellViewDemo()
  ),
  );
}

class FoldingCellViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){

        }),
        title: Text('Różaniec'),

      ),
      body: Container(
        color: Colors.purple.shade50,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              child: SimpleFoldingCell(
                frontWidget: FrontWidget(),
                innerTopWidget: InnerTopWidget(),
                innerBottomWidget: InnerBottomWidget(),

                cellSize: Size(MediaQuery.of(context).size.width,175),
                padding: EdgeInsets.all(10.0),
              ),
            ),
    Container(
      child: SimpleFoldingCell(
        frontWidget: FrontWidget(),
        innerTopWidget: InnerTopWidget(),
        innerBottomWidget: InnerBottomWidget(),

        cellSize: Size(MediaQuery.of(context).size.width,175),
        padding: EdgeInsets.all(10.0),
      ),
    ),
    Container(
      child: SimpleFoldingCell(
        frontWidget: FrontWidget(),
        innerTopWidget: InnerTopWidget(),
        innerBottomWidget: InnerBottomWidget(),

        cellSize: Size(MediaQuery.of(context).size.width,175),
        padding: EdgeInsets.all(10.0),
      ),
    ),
    Container(
      child: SimpleFoldingCell(
        frontWidget: FrontWidget(),
        innerTopWidget: InnerTopWidget(),
        innerBottomWidget: InnerBottomWidget(),

        cellSize: Size(MediaQuery.of(context).size.width,175),
        padding: EdgeInsets.all(10.0),
      ),
    ),
          ],
        ),
      ),
    );
  }
}

Container InnerTopWidget(){
  return Container(
    color: Colors.purple,
  );
}

Container InnerBottomWidget(){
  return Container(
    color: Colors.white,
  );
}


Container FrontWidget(){
  return Container(
    color: Colors.purple,
    alignment: Alignment.center,
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.purple,
            ),
            child: Container(
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0)
                          child: Text('Tajemnice' ,
                            style: TextStyle(
                              color: Colors.pink.shade50,
                              fontSize: 20.0,
              ),
            ),
          ),
                      ),
    Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0)
        child: Text('Radosne',
        style: TextStyle(
          color: Colors.pink.shade50,
          fontSize: 20.0,
        ),
      ),),
  ),

  ],
                  ),

                ],
              ),
            ),
          ),
        ),

    Expanded(
    flex: 2,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
      ),
    ),
  ),
      ],
    ),
  );
}