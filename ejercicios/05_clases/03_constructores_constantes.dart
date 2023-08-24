class Location {

  final double lat;
  final double lng;

  const Location( this.lat, this.lng );

}

void main(List<String> args) {
  
  final sanFrancisco1 = new Location(18.2323, 39.9000);
  final sanFrancisco2 = new Location(18.2323, 39.9001);
  final sanFrancisco3 = new Location(18.2323, 39.9002);

  print( sanFrancisco1 == sanFrancisco2 ); // False
  print( sanFrancisco2 == sanFrancisco3 ); // False

  print( "The sanFrancisco1 hash code is: ${sanFrancisco1.hashCode}" );
  print( "The sanFrancisco2 hash code is: ${sanFrancisco2.hashCode}" );
  print( "The sanFrancisco3 hash code is: ${sanFrancisco3.hashCode}" );

  Location sanFrancisco4 = const Location(18.2323, 39.9000);
  Location sanFrancisco5 = const Location(18.2323, 39.9001);
  Location sanFrancisco6 = const Location(18.2323, 39.9001);

  print( sanFrancisco4 == sanFrancisco5 );
  print( sanFrancisco5 == sanFrancisco6 );

  print( "The sanFrancisco4 hash code is: ${sanFrancisco4.hashCode}" );
  print( "The sanFrancisco5 hash code is: ${sanFrancisco5.hashCode}" );
  print( "The sanFrancisco6 hash code is: ${sanFrancisco6.hashCode}" );

}