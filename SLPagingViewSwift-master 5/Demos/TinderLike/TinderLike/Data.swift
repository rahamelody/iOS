//
//  Data.swift
//  TinderLike
//
//  Created by Raha Ghassemi on 4/18/16.
//  Copyright © 2016 Stefan Lage. All rights reserved.
//

import Foundation

class Data {
    class Entry {
        let Name : String
        let Age : String
        let Job : String
        let Image : String
        let Description : String
        init(name : String, age : String, job : String, desc: String, img: String) {
            self.Age = age
            self.Name = name
            self.Job = job
            self.Description = desc
            self.Image = img
        }
        
    }
    
    let people = [
        Entry(name: "ANDREW", age: "25", job: "GOOGLE", desc: "I'm a 6ft basketball player and I love fishing", img: "man1"),
        Entry(name: "BEN", age: "26", job: "JPMORGAN & CHASE", desc: "I love to cook and watch Netflix!", img: "man2"),
        Entry(name: "JIMMY", age: "21", job: "SQUARESPACE", desc: "Parsons grad working in web dev", img: "man3"),
        Entry(name: "JORDAN", age: "28", job: "AMAZON", desc: "Let's get pizza and go to a museum", img: "man4"),
        Entry(name: "CARL", age: "23", job: "FACEBOOK", desc: "I've traveled to 30 countries", img: "man5"),
        Entry(name: "MIKE", age: "29", job: "HUFFINGTON POST", desc: "I'm into whiskey and puppies", img: "spiceguy")
        
        
    ]
    
}
