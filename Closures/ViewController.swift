//
//  ViewController.swift
//  Closures
//
//  Created by ZAID AHMAD on 24/03/2023.
//

import UIKit

struct Places {
    let name : String
    let ratings : Int
}

class ViewController: UIViewController {
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let counter1 = makeCounter()
        print(counter1()) // Output: 1
        print(counter1()) // Output: 2

        let counter2 = makeCounter()
        print(counter2()) // Output: 1
        print(counter1()) // Output: 3
        
        
//        let placesArray = [Places(name: "Murree", ratings: 5),
//                      Places(name: "Kumrat-Vally", ratings: 9),
//                      Places(name: "Nathiya-Galli", ratings: 8),
//                      Places(name: "Bhurban", ratings: 7),
//                      Places(name: "Naraan", ratings: 8),
//                      Places(name: "Babusar-Top", ratings: 9),
//                      Places(name: "Neelam-Valley", ratings: 10),
//                      Places(name: "Murree-Mall", ratings: 6),
//                      Places(name: "Shogran", ratings: 8)
//        ]
//
//
//      //  let topPlaces = placesArray.filter(getTopRatedPlaces)
//        let topPlacesSorted = placesArray.sorted { places1, places2 in
//            return places1.ratings > places2.ratings
//        }
//
//        print(topPlacesSorted)
        
    
    }
    
    func getTopRatedPlaces(places: Places) -> Bool {
        return places.ratings > 8
    }
    
    var getTopRatedPlaces : (Places , Places) -> (Bool) = { places1 , places2 in
        return places1.ratings > places2.ratings
    }
    
    func makeCounter() -> () -> Int {
        var count = 0
        let counter = { () -> Int in
            count += 1
            return count
        }
        return counter
    }


    

  

}
