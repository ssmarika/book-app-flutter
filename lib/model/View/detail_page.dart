import 'package:flutter/material.dart';
import 'package:sample/model/Book/book.dart';





class DetailPage extends StatelessWidget {
  final Book book;
  DetailPage(this.book);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          children: [
            Container(

              height:250,
              width: double.infinity ,
              child: Image.network(book.image,fit: BoxFit.cover ),

            )
            ,

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,

                children: [
                  Text(book.label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ) ),
                  Column(

                    children: [
                      Text(book.rating),
                      SizedBox(height: 5),
                      Text(book.genre),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(book.detail),
            ),

           // SizedBox(50),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   ElevatedButton(onPressed: (){}, child: Text('Read Book')),
                   SizedBox(width: 40),
                   OutlinedButton(onPressed: (){}, child: Text('More Info')),

                 ],
              ),
            )
          ],
        )
    );
  }
}
