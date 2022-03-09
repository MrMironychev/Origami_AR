//
//  Command.swift
//  Origami_AR
//
//  Created by Сергей on 24.10.2021.
//

import Foundation
import ARKit

class Command {
    func getId() -> Int {
        return 0
    }
    
    func Execute(module: ModuleConnection) {}
    func Execute(module: ModuleGrab) {}
    func Execute(module: Coordinator) {}
    func Execute(module: ModuleOrigamiModel) {}
}

class CommandPrintModuleConnection: Command {
    override func getId() -> Int {
        return 1
    }
    
    override func Execute(module: ModuleConnection) {
        module.print_connection()
    }
}

class CommandPrintModuleGrab: Command {
    override func getId() -> Int {
        return 2
    }
    
    override func Execute(module: ModuleGrab) {
        module.print_grab()
    }
}

class CommandPrintModuleARView: Command {
    
    override func getId() -> Int {
        return 3
    }
    
    override func Execute(module: Coordinator) {
    }
}

class CommandChangeAngle: Command {
    
    let m_angle: Float
    
    override func getId() -> Int {
        return 3
    }
    
    init(angle: Float) {
        m_angle = angle
    }
    
    override func Execute(module: Coordinator) {
    }
}

class CommandRotateOrigamiModel: Command {
    
    let m_angle: Float
    
    init(angle: Float) {
        m_angle = angle
    }
    override func getId() -> Int {
        return 4
    }
    
    override func Execute(module: ModuleOrigamiModel) {
        module.rotateModel(angle: m_angle)
    }
}

class CommandNextStepOrigamiModel: Command {
    
    override func getId() -> Int {
        return 4
    }
    
    override func Execute(module: ModuleOrigamiModel) {
        module.nextStep()
    }
}

class CommandFrogInitOrigamiModel: Command {
    
    override func getId() -> Int {
        return 4
    }
    
    override func Execute(module: ModuleOrigamiModel) {
        module.FrogInit()
    }
}

class CommandAirplaneInitOrigamiModel: Command {
    
    override func getId() -> Int {
        return 4
    }
    
    override func Execute(module: ModuleOrigamiModel) {
        module.AirplaneInit()
    }
}

class CommandShipInitOrigamiModel: Command {
    
    override func getId() -> Int {
        return 4
    }
    
    override func Execute(module: ModuleOrigamiModel) {
        module.ShipInit()
    }
}

class CommandSwanInitOrigamiModel: Command {
    
    override func getId() -> Int {
        return 4
    }
    
    override func Execute(module: ModuleOrigamiModel) {
        module.SwanInit()
    }
}
