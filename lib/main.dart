import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';



void main(List<String> args) {
  runApp(MaterialApp(home: notes()));
}

class notes extends StatefulWidget {
  @override
  _notesState createState() => _notesState();
}

class _notesState extends State<notes> {

  Widget tones({Color color,int sn}){
    return   Expanded(child: Container(
               color: color,
               child: FlatButton(onPressed: (){
                 player.play("note$sn.wav")  ;             },child: null,),
         ),
        );
  }
  
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

              
               child :  Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                     tones(color : Colors.greenAccent,sn : 1),
               tones(color : Colors.redAccent,sn : 2),
               tones(color : Colors.blueAccent,sn : 5),
                tones(color : Colors.yellowAccent,sn : 7),
                  ],
                )
              
            
        
      ),
        
    );
  }
}
