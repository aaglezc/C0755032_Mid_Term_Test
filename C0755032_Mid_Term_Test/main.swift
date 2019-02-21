//
//  main.swift
//  C0755032_Mid_Term_Test
//
//  Created by MacStudent on 2019-02-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

print("C0755032 Mid Term Test")

var man1 = Manufacturer()

man1.display()

var pr1 = Product(mid: 1, mname: "Segate", pid: "P001", pname: "Hard Drive", pprice: 120.0, pqty: 2)
var pr2 = Product(mid: 2, mname: "ZIP", pid: "P002", pname: "ZIP Drive", pprice: 90.0, pqty: 1)
var pr3 = Product(mid: 3, mname: "IBM", pid: "P003", pname: "Floppy Disk", pprice: 50, pqty: 5)
var pr4 = Product(mid: 4, mname: "Samsung", pid: "P004", pname: "Monitor", pprice: 300.0, pqty: 2)
var pr5 = Product(mid: 5, mname: "Apple", pid: "P005", pname: "iPhone 7 Plus", pprice: 1200.0, pqty: 1)

var or1 = Order()
var orderProducts1 = Array<Product>()
orderProducts1.append(pr1)
orderProducts1.append(pr2)
orderProducts1.append(pr3)
or1.setData(id: 1, date: "2019-02-20", products: orderProducts1)

var or2 = Order()
//var orderProducts2 = Array<Product>()
or2.setData(id: 2, date: "2019-02-20", products: [pr3,pr5,pr1,pr2])


var or3 = Order()
or3.setData(id: 3, date: "2019-02-20", products: [pr1,pr2,pr3,pr5,pr4])


var Orders = Dictionary<String,Order>()
Orders.updateValue(or1, forKey: "1")
Orders.updateValue(or2, forKey: "2")
Orders.updateValue(or3, forKey: "3")

for i in Orders.values
{
    i.display()
}

/*
var OrdesOrdered : [Order]
OrdesOrdered = Array<Order>()

OrdesOrdered = Orders.sorted(by: {
    (s1, s2) -> Bool in
    s1.
})



 */
