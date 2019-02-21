//
//  Manufacturer.swift
//  C0755032_Mid_Term_Test
//
//  Created by MacStudent on 2019-02-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

class Manufacturer : IDisplay
{
    var manId : Int?
    var manName : String?
    
    init()
    {
        manId = 0
        manName = String()
    }
    
    init(id:Int,name:String)
    {
        self.manId = id
        self.manName = name
    }
    
    func display()
    {
        print("Manufaturer ID  : \(self.manId!)")
        print("Manufaturer Name: \(self.manName!)")
    }
    
    
}
