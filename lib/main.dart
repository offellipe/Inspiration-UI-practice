import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(
   MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomePage(),
  )
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black87),
          onPressed:() {},
        )
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text('Find your', style: TextStyle(color: Colors.black87, fontSize: 25),),
                  const SizedBox( height: 3,),
                  const Text('Inspiration', style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),),
                  const SizedBox( height: 20,),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.black87,),
                        hintText: "Search you're looking for",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)
                      )
                      ),
                    ),
                    const SizedBox(height: 10,),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text('Promo Today', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 15,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        promoCard('assets/images/one.jpg'),
                        promoCard('assets/images/two.jpg'),
                        promoCard('assets/images/three.jpg'),
                        promoCard('assets/images/four.jpg')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                       image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/three.jpg')
                        ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          stops: const [0.3, 0.9],
                          colors:  [
                            Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.2),
                          ]
                        )
                      ),
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text('Best Design', style: TextStyle(color: Colors.white, fontSize: 20 ),),
                        ),
                      )
                    )
                  )
                ]
              ),
            )
          ],
        )
      ),
    );
  }

  Widget promoCard(image){
    return AspectRatio(
      aspectRatio: 2.6/3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image)
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: const [0.1, 0.9],
              colors:  [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ]
            )
          )
        )
      ),
      );
  
  }

}