//
//  empty.swift
//  SPOS
//
//  Created by admin on 2021/10/27.
//

import DZKoinSwift
import DZModelA
//import SPBBBModule

protocol Pump {
    func pump()
}

protocol Heater {
    func on()
    func off()
    func isHot() -> Bool
}

protocol CoffeeMaker {
    func brew()
}

class ElectricHeater : Heater {
    
    private var heating: Bool = false
    
    func on() {
        print("~ ~ ~ heating ~ ~ ~")
        heating = true
    }
    
    func off() {
        heating = false
    }
    
    func isHot() -> Bool {
        return heating
    }
    
}

struct Thermosiphon : Pump {
    let heater : Heater
    
    func pump() {
        if (heater.isHot()) {
            print("=> => pumping => =>")
        }
    }
}

struct StandardCoffeeMaker : CoffeeMaker {
    
    let heater : Heater
    let pump : Pump
    
    func brew() {
        heater.on()
        pump.pump()
        print(" [_]P coffee! [_]P")
        heater.off()
    }
}

struct CoffeeShop {
    let maker: CoffeeMaker = try! inject()
}

struct modelOne {
    let one:DZOneProtocol = try! inject()
}

let coffeModule = module {
    $0.single { _ -> Heater in
        return ElectricHeater()
    }
    $0.single { i -> Pump in
        return Thermosiphon(heater: try i.get())
    }
    $0.single { i -> CoffeeMaker in
        return StandardCoffeeMaker(heater: try i.get(), pump: try i.get())
    }
}
 
@objcMembers public class ttKoin:NSObject {
    
    override init() {
        super.init()
        
        try! startKoin {
            $0.modules(coffeModule)
            $0.modules(DZOneModule)
//            $0.modules(DZNetWorkModule)
        }
        
        
        let coffeeShop = CoffeeShop()

        coffeeShop.maker.brew()
        
        let modelOne = modelOne()
        
        modelOne.one.bbbb()
        
//        DZOneNetwork()
    }

}





