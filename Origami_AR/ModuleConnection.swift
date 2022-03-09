//
//  ModuleConnection.swift
//  Origami_AR
//
//  Created by Сергей on 24.10.2021.
//

import Foundation

class ModuleConnection: Module {
    func ExecuteCommand(command: Command) {
        command.Execute(module: self)
    }
    func print_connection() {
        print("ModuleConnection")
    }
}
