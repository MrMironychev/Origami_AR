//
//  ContentView.swift
//  Origami_AR
//
//  Created by Сергей on 26.10.2021.
//

import SwiftUI
import RealityKit
import ARKit
import RealityFoundation

struct ContentView : View {
    //let container: ARViewContainer?
    
    @State private var angle: Float = 0.0
    @State private var isEditing = false
    
    var body: some View {
        
        VStack {
            return ARViewContainer().edgesIgnoringSafeArea(.all)
        }
        
        HStack {
            Button(action: FrogAction) {
                Label("", image: "Frog")
            }
            Button(action: ShipAction) {
                Label("", image: "Ship")
            }
            Button(action: SwanAction) {
                Label("", image: "Swan")
            }
            Button(action: AirplaneAction) {
                Label("", image: "Airplane")
            }
            Button(action: RightAction) {
                Label("", image: "Right")
            }
        }
        .padding(20)
        
    }
    
}

func LeftAction() {
        
}

func FrogAction() {
    
    let mediator = Mediator.shared
    mediator.SendCommand(command: CommandFrogInitOrigamiModel())
    
}

func ShipAction() {
    
    let mediator = Mediator.shared
    mediator.SendCommand(command: CommandShipInitOrigamiModel())
    
}

func AirplaneAction() {
    
    let mediator = Mediator.shared
    mediator.SendCommand(command: CommandAirplaneInitOrigamiModel())
    
}

func SwanAction() {
    
    let mediator = Mediator.shared
    mediator.SendCommand(command: CommandSwanInitOrigamiModel())
    
}


func RightAction() {
    
    let mediator = Mediator.shared
    mediator.SendCommand(command: CommandNextStepOrigamiModel())
    
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        let mediator = Mediator.shared
        mediator.addModule(id: 3, module: context.coordinator)
        mediator.addModule(id: 4, module: ModuleOrigamiModel(coordinator: context.coordinator))
        
        context.coordinator.view = arView
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        
    }
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
}

func button_action() {
    
    let mediator = Mediator.shared
    mediator.SendCommand(command: CommandPrintModuleARView())

}

class Coordinator: NSObject, ARSessionDelegate, Module {
    var m_angle: Float = 0
    var m_axis: SIMD3<Float> = SIMD3<Float>(0,0,0)
    
    weak var view: ARView?

        func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
        }
    
    func ExecuteCommand(command: Command) {
        command.Execute(module: self)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
