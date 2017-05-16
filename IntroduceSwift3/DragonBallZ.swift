//
//  DragonBallZ.swift
//  IntroduceSwift3
//
//  Created by Moises on 5/16/17.
//  Copyright © 2017 Moises. All rights reserved.
//

import Foundation

class DragonBallZ{
    var name = ""
    var image = ""
    
    init() {
    }
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getImage() -> String {
        return self.image
    }
    
    class func getListDefault() -> [DragonBallZ] {
        var listDefault = [DragonBallZ]()
        
        listDefault.append(DragonBallZ(name: "Goku", image: "goku.png"))
        listDefault.append(DragonBallZ(name: "Vegeta", image: "vegeta.png"))
        listDefault.append(DragonBallZ(name: "Gohan", image: "gohan.png"))
        listDefault.append(DragonBallZ(name: "Piccolo", image: "piccolo.png"))
        listDefault.append(DragonBallZ(name: "Trunks", image: "trunks.png"))
        listDefault.append(DragonBallZ(name: "Majin Buu", image: "buu.png"))
        
        return (listDefault)
    }
}
