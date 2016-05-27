//: If, Else-If Exercise: Triathlon training

import UIKit

// Here is a class to represent the triathlete in training.
class Trainee {
    let name: String
    var canFinishSwim: Bool
    var canFinishBike: Bool
    var canFinishRun: Bool

    init(name: String, canFinishSwim: Bool, canFinishBike: Bool, canFinishRun: Bool) {
        self.name = name
        self.canFinishSwim = canFinishSwim
        self.canFinishBike = canFinishBike
        self.canFinishRun = canFinishRun
    }
}

// Here we will instantiate and initialize a couple of trainees.
var athlete1 = Trainee(name: "Kurt", canFinishSwim: false, canFinishBike: true, canFinishRun: true)
var athlete2 = Trainee(name: "Teresa", canFinishSwim: true, canFinishBike: true, canFinishRun: true)

func checkTrainingStatus (triathleteInTraining: Trainee) {
//TODO: Add your if, else-if statement here! 
    
    if triathleteInTraining.canFinishSwim && triathleteInTraining.canFinishBike && triathleteInTraining.canFinishRun {
        print("\(triathleteInTraining.name) you are officially a Tri-Athlete!")
        
    } else if !triathleteInTraining.canFinishSwim  {
        print("\(triathleteInTraining.name) you need to keep swimming.")
    } else if !triathleteInTraining.canFinishBike  {
        print("\(triathleteInTraining.name) you need to keep cycling.")
    } else if !triathleteInTraining.canFinishRun  {
        print("\(triathleteInTraining.name) you need to keep running.")
    }

}

checkTrainingStatus(athlete1)
checkTrainingStatus(athlete2)
