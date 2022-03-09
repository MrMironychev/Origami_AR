//
//  ModuleGrab.swift
//  Origami_AR
//
//  Created by Сергей on 24.10.2021.
//

import Foundation

class ModuleGrab: Module {
    func ExecuteCommand(command: Command) {
        command.Execute(module: self)
    }
    
    func print_grab() {
        print("ModuleGrab")
    }
}
