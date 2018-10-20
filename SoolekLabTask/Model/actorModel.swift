//
//  actorModel.swift
//  SoolekLabTask
//
//  Created by shady on 10/20/18.
//  Copyright © 2018 XYZ. All rights reserved.
//

import UIKit

class actorModels: Codable {
    
    let codesNumber :Int

    
    let actors: [actorModel]
    
   
    init (codesNumber:Int, actors: [actorModel])
    {
        self.codesNumber = codesNumber
        
        self.actors = actors
    }
 
}

class actorModel: Codable {
    
    let code : String?
    let name :String?
    let states : String?
  
    init(code: String, name: String, states: String) {
        self.code = code
        self.name = name
        self.states = states
    }

}
