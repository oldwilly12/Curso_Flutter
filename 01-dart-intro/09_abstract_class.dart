void main () {
    final windPlant = WindPlant( initialEnergy: 100);

    print ('Wind: ${ chargePhone(windPlant)}');
  
}

double chargePhone( EnergyPlant plant ){
  if (plant.energyLeft<10){
    throw Exception('Not enough energy');
  }
  
  return plant.energyLeft - 10;
}

enum PlantType {nuclear, wind, water} //mi tipo pero cerrado

abstract class EnergyPlant{
  
  double energyLeft;
  PlantType type;//String type; //nuclear, wind, water
  
  EnergyPlant({ 
    required this.energyLeft,
    required this.type
    });
  void consumeEnergy( double amount);
}

//extends o implement
class WindPlant extends EnergyPlant{
   WindPlant({ required double initialEnergy})
      : super( energyLeft: initialEnergy, type: PlantType.wind );
 
  @override
  void consumeEnergy( double amount ){
    energyLeft -= amount;
  }
}









