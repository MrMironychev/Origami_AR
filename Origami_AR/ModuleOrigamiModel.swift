//
//  ModuleOrigamiModel.swift
//  Origami_AR
//
//  Created by Сергей on 31.10.2021.
//

import Foundation

class ModuleOrigamiModel: Module {
    var m_coordinator: Coordinator
    var m_state: StateOrigami
    
    init(coordinator: Coordinator) {
        m_coordinator = coordinator
        m_state = StateNotInitModel(coordinator: m_coordinator)
    }
    func rotateModel(angle: Float) {
        m_state.rotateModel(angle: angle)
    }
    func nextStep() {
        m_state = m_state.next()
    }
    func FrogInit() {
        m_state = StateInitFrogModel(coordinator: m_coordinator)
        m_state = m_state.next()
    }
    func AirplaneInit() {
        m_state = StateInitAirplaneModel(coordinator: m_coordinator)
        m_state = m_state.next()
    }
    func ShipInit() {
        m_state = StateInitShipModel(coordinator: m_coordinator)
        m_state = m_state.next()
    }
    func SwanInit() {
        m_state = StateInitSwanModel(coordinator: m_coordinator)
        m_state = m_state.next()
    }
    
    func ExecuteCommand(command: Command) {
        command.Execute(module: self)
    }
}
