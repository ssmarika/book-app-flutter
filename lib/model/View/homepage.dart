

import 'package:flutter/material.dart';
import 'package:sample/model/Book/book.dart';
import 'package:get/get.dart';
import 'package:sample/model/View/detail_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi Smarika,', style: TextStyle(fontSize: 15)),
        foregroundColor: Colors.black ,
        actions: [
          Icon(Icons.search),
          SizedBox(width:20),
          Icon(Icons.notifications),
          SizedBox(width:10),
       ],
        backgroundColor: Color(0xFFF2F5F9),
      ) ,

      backgroundColor: Color(0xFFF2F5F9),
      body:
          Column(
    children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 80,
                width: double.infinity,
                color: Color(0xFFC8C8C8),
                margin:EdgeInsets.only(left: 10, right: 10, top: 20),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, //provide space between the container ie the text and image
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children:[
                        Text('YOUR', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),),
                        Text('BOOKSHELF',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, ) ),

                      ],
                    ),
                    Container(
                    height: 100,
                    width: 120,

                      child: Image.network('https://i.pinimg.com/736x/f5/05/da/f505da7499d8103459d905a2f33f418e.jpg'),
                    )

                    ],
                )
          ),
            ),
           SizedBox(height: 10),
          
           // now we show the book description
           Container(
             height: 180,
             width: double.infinity,
             color: Color(0xFFF2F5F9),
             child: ListView.builder(
               scrollDirection: Axis.horizontal, // to scroll
             physics: BouncingScrollPhysics(), //bouncing effect
             itemCount:books.length  ,
              itemBuilder: (context, index){
                 final book=books[index]; //what does this do?
              return  ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  margin: EdgeInsets.only(right :5,left:5),
                    width :280,
                    height: 300,

                   color: Color(0xFFF2F5F9),
                    child:
                      Stack(
                      children: [
                          Positioned(
                            bottom: 0,
                            child: Card(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                
                                
                                child: Container(
                                  height: 160,
                                  width: 280 ,
                                  color: Color(0xFFC8C8C8),
                                  child: Row(
                                    children: [

                                      Expanded(child: Container()),
                                      Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 5, bottom: 5,right: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(book.label, style: TextStyle(fontWeight: FontWeight.bold )),
                                            SizedBox(height: 5),
                                            Text(book.detail, maxLines:3,overflow: TextOverflow.ellipsis,style:TextStyle( fontSize: 12 ) ),
                                            SizedBox(height: 5),
                                            Text(book.genre, style:TextStyle( fontSize: 12, color: Colors.red )),
                                            SizedBox(height: 5),
                                            Text(book.rating),
                                          ],
                                    ),
                                        ),
                                      ),
                        ]
                                  ),



                                ),
                              ),
                            ),
                          ),


                        Image.network(book.image,)//you can set the height
                      ],
                    )

                ),
              );

              }
          )
        ),
      Align(
        alignment: Alignment.topLeft,

          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Text('You may also like', style: TextStyle(fontWeight: FontWeight.bold)),
          )),
      Container(
          height: 200,
          width: double.infinity,
          color: Color(0xFFF2F5F9),
          child: ListView.builder(
              scrollDirection: Axis.horizontal, // to scroll
              physics: BouncingScrollPhysics(), //bouncing effect
              itemCount:books.length  ,
              itemBuilder: (context, index){
                final book=books[index]; //what does this do?
                return  InkWell(
                  onTap: (){
                    Get.to(()=>DetailPage(book));
                    print(index);//prints the index of obj  that we press
                  },
                  child: Container(
                      margin: EdgeInsets.only(right :3,left:3),
                      width :100,
                      height: 150,

                      color: Color(0xFFF2F5F9),
                      child:
                      Align(
                        alignment:Alignment.topLeft,//Alignment.topCenter,
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(book.image,)
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(book.label, maxLines:1,overflow: TextOverflow.ellipsis,style:TextStyle( fontWeight :FontWeight.bold ,fontSize: 12 )),
                            ),
                            Text(book.genre, style:TextStyle( fontSize: 10 )),
                          ],
                        ),
                      )
                      

                  ),
                );

              }
          )
      ),


    ],
          )


      );

  }
}
