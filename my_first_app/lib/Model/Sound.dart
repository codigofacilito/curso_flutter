class Sound{
  String title;
  String author;
  String cover;
  String time;
  Sound({this.title="",this.author="",this.cover="",this.time=""});

}

List<Sound>sounds=[
  Sound(title:"Enero" ,author:"Shakira", cover: "assets/images/shakira.png",time: "01:50" ),
  Sound(title:"7 Rings" ,author:"Ariana Grande", cover:"assets/images/7rings.jpeg",time: "03:40"  ),
  Sound(title:"Back To Black" ,author:"Amy Winehouse", cover: "assets/images/amy.jpg",time: "02:10"  ),
  Sound(title:"Scream" ,author:"Avenged sevenfold", cover:"assets/images/avenged.jpg",time: "01:60"   ),
  Sound(title:"Havana" ,author:"Camila Cabello", cover:"assets/images/havana.jpg",time: "03:00"   ),
];