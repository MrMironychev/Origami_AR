//
//  Mediator.swift
//  Origami_AR
//
//  Created by Сергей on 24.10.2021.
//

import Foundation

class Mediator {
    
    var interpret: [Int: Module] = [:]
    
    static let shared = Mediator()
    
    private init() {
        interpret = [:]
        addModule(id: 1, module: ModuleConnection())
        addModule(id: 2, module: ModuleGrab())
        
    }
    
    func SendCommand(command: Command) {
        interpret[command.getId()]?.ExecuteCommand(command: command)
    }
    
    func addModule(id: Int, module: Module) {
        interpret[id] = module
    }
}
