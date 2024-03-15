class Media{
  void play(){
    print("Playing Media...");
  }
}

class Song extends Media {
  String artist;

  //Song Constructor
  Song(this.artist);

  @override
  void play(){
    print("Playing song by $artist....");
  }
}

void main(){
  //New instance of Media
  Media newMedia = Media();

  //Calling the play method from the Media
  newMedia.play(); //will print "Playing media..."

  //New instance of Song
  Song currentlyPlaying = Song("Michael Bolton");
  currentlyPlaying.play();  // will print "Playing song by Michael Bolton...."

}