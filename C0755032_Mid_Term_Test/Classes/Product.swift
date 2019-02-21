//
//  Product.swift
//  C0755032_Mid_Term_Test
//
//  Created by MacStudent on 2019-02-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

class Product : Manufacturer
{
    var prId : String?
    var prName : String?
    var prPrice : Float?
    var prQty   : Int?
    
    override init()
    {
        prId = String()
        prName = String()
        prPrice = 0.0
        prQty 	  = 0
   
        super.init()
    }
    
    init(mid:Int,mname:String, pid: String, pname :String, pprice:Float=0.0, pqty: Int=0)
    {
        super.init(id: mid, name: mname)
        self.prId = pid
        self.prName = pname
        self.prPrice = pprice
        self.prQty = pqty
    }
    
    override func display()
    {
        print("Produc  ID      : \(self.prId!)")
        print("Product Name    : \(self.prName!)")
        print("Product Price   : \(self.prPrice!)")
        print("Product Quantity: \(self.prQty!)")
    }
}
