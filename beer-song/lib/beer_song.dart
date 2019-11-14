class BeerSong {
  // Put your code here
 List recite(int firstNumber, int number) {

int finalNumber = firstNumber - number;
String remainingBottles = "";


 
List <String> zeroSong = ["${firstNumber} bottles of beer on the wall, ${firstNumber} bottles of beer.",
 "Take one down and pass it around, no more bottles of beer on the wall."];

if (finalNumber == 1) {
   remainingBottles = "bottle";
   //return song;
  } else if (finalNumber == 0) {
return zeroSong;
  } else {
   remainingBottles = "bottles";
    //return song; }
}

List <String> song = ["${firstNumber} bottles of beer on the wall, ${firstNumber} bottles of beer.",
 "Take one down and pass it around, ${finalNumber} ${remainingBottles} of beer on the wall."];
return song;
   } 

}