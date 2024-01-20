import Foundation

func solution(_ hp:Int) -> Int {
       let generalAntAttack = 5
    let soldierAntAttack = 3
    let workerAntAttack = 1
    var minAnts = Int.max

    for generals in 0...(hp / generalAntAttack) {
        for soldiers in 0...(hp / soldierAntAttack) {
            for workers in 0...(hp / workerAntAttack) {
                let currentHp = generals * generalAntAttack + soldiers * soldierAntAttack + workers * workerAntAttack
                if currentHp == hp {
                    let totalAnts = generals + soldiers + workers
                    minAnts = min(minAnts, totalAnts)
                }
            }
        }
    }

    return minAnts
}