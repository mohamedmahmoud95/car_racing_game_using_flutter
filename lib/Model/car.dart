class Car{
  String id;
  String driverID;
  String imageURL;
  double leftPosition;
  double topPosition;

  Car({required this.id, required this.imageURL, required this.driverID, required this.leftPosition, required this.topPosition});
}

Car sampleCar1 = Car(id: 'c1', imageURL: 'assets/green_car.png', driverID: 'd1',   topPosition: 600, leftPosition: 100);
Car sampleCar2 = Car(id: 'c2', imageURL: 'assets/purple_car.png',  driverID: 'd2', topPosition: 600, leftPosition: 0);
Car sampleCar3 = Car(id: 'c3', imageURL: 'assets/red_car.png',   driverID: 'd3',   topPosition: 600, leftPosition: 200);
Car sampleCar4 = Car(id: 'c4', imageURL: 'assets/white_car.png', driverID: 'd4',   topPosition: 600, leftPosition: 300);

List<Car> sampleCars = [sampleCar1,sampleCar2,sampleCar3,sampleCar4];
