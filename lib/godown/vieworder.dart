import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class vieworder extends StatefulWidget {
  const vieworder({Key? key}) : super(key: key);

  @override
  State<vieworder> createState() => _vieworderState();
}

class _vieworderState extends State<vieworder> {

List images=['images/tomatooo.jpg','images/potatoooo.jpg','images/apple.png','images/salt.png','images/sugar.png'];
List name=["Tomato","Potato","Apple","Salt","Sugar"];
List price=["20","30","110","20","45","60"];
List quantity=["2kg","5kg","3kg","2","5kg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    
    
    
    appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.pink,
        
        title: Text("order"),
      ),
      body: 
        Column(
          children: [
            Expanded(
              child: ListView.builder(
              
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                   
                    return Card(
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                           
                              CircleAvatar(
                                radius: 60,
                                
                              backgroundImage: AssetImage(images[index]),
                              ),
                           SizedBox(width: 30,),
                            Column(
                              children: [
                                
                              Text(name[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              Text("Rs: "+price[index]),
                              Text("Quatity:"+quantity[index])
            
                              ],
                            ),
                    
                            
                            
                                 
                            ],
                        ),
                        ]
                        
                      ),
            
                        
                       
                    );
                    
                
                  }
                  ),


                  
            ),
          ]
    
  )
    );
  }
}