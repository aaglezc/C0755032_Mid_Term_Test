//
//  Order.swift
//  C0755032_Mid_Term_Test
//
//  Created by MacStudent on 2019-02-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

class Order : IDisplay
{
    var orId       : Int?
    var orDate     : String?
    var orProducts : [Product]
    var orTotal    : Float!
    
    init()
    {
        orId       = 0
        orDate     = String()
        orProducts = [Product]()
        orTotal    = 0.0
    }
    
    func setData(id:Int,date:String, products :[Product])
    {
        self.orId = id
        self.orDate = date
        self.orProducts = products
    }
    
    func calcTotal()
    {
        
        var tot : Float
        
        tot = 0.0
        for i in orProducts
        {
            let value = i.prPrice! * Float(i.prQty!)
            tot = tot + value
        }
        self.orTotal = tot
        
        
        
    }
    
    func display()
    {
        print("--------------------------------------------------")
        print("Order  ID      : \(self.orId!)")
        print("Order Date     : \(self.orDate!)")
        print("Product Detail :")
        self.calcTotal()
        for i in orProducts
        {
            print("ID",i.prId!," Name:",i.prName!,"Price:",i.prPrice!.currencyformat(), "Quantity",i.prQty!)
        }
        //
        //
        print("Order Total     : \(self.orTotal!.currencyformat())")
    }
}
//var bb = [Int]()
