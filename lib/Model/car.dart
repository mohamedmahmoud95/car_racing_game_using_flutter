class Car{
  String id;
  String driverID;
  String imageURL;

  Car({required this.id, required this.imageURL, required this.driverID});
}

Car sampleCar1 = Car(id: 'c1', imageURL: 'assets/green_car.png', driverID: 'd1');
Car sampleCar2 = Car(id: 'c2', imageURL: 'assets/blue_car.png',  driverID: 'd2');
Car sampleCar3 = Car(id: 'c3', imageURL: 'assets/red_car.png',   driverID: 'd3');
Car sampleCar4 = Car(id: 'c4', imageURL: 'assets/white_car.png', driverID: 'd4');

List<Car> sampleCars = [sampleCar1,sampleCar2,sampleCar3,sampleCar4];
