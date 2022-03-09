//
//  StateOrigami.swift
//  Origami_AR
//
//  Created by Сергей on 31.10.2021.
//

import Foundation
import ARKit
import RealityKit
import RealityFoundation

protocol StateOrigami {
    func rotateModel(angle: Float)
    func next() -> StateOrigami
}

class StateNotInitModel: StateOrigami {
    let OrigamiModel: Coordinator
    init(coordinator: Coordinator) {
        OrigamiModel = coordinator
    }
    func rotateModel(angle: Float) {}
    func next() -> StateOrigami {
        
        return StateNotInitModel(coordinator: OrigamiModel)
        
    }
}

class StateInitFrogModel: StateOrigami {
    let OrigamiModel: Coordinator
    
    init(coordinator: Coordinator) {
        OrigamiModel = coordinator
        
    }
    func rotateModel(angle: Float) {
    }
    func next() -> StateOrigami {
        
        guard let view = OrigamiModel.view else { return StateOrigamiFrogFinish(coordinator: OrigamiModel)}
        
                Frog.load_initAsync(completion: {(result) in
                        view.scene.anchors.removeAll()
                        let boxAnchor = try! result.get()
                        view.scene.anchors.append(boxAnchor)
                })
        
        return StateOrigamiFrogStep1(coordinator: OrigamiModel)
        
    }
}

class StateOrigamiFrogStep1: StateInitFrogModel {
    
    override func next() -> StateOrigami {
        
        guard let view = OrigamiModel.view else { return StateOrigamiFrogFinish(coordinator: OrigamiModel)}
        
        Frog.loadStep1Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
        return StateOrigamiFrogStep2(coordinator: OrigamiModel)
    }
}

class StateOrigamiFrogStep2: StateInitFrogModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiFrogFinish(coordinator: OrigamiModel)}
        
        Frog.loadStep2Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiFrogStep3(coordinator: OrigamiModel)
    }
}

class StateOrigamiFrogStep3: StateInitFrogModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiFrogFinish(coordinator: OrigamiModel)}
        
        Frog.loadStep3Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })

        return StateOrigamiFrogStep4(coordinator: OrigamiModel)
    }
}

class StateOrigamiFrogStep4: StateInitFrogModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiFrogFinish(coordinator: OrigamiModel)}
        
        Frog.loadStep4Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiFrogStep5(coordinator: OrigamiModel)
    }
}

class StateOrigamiFrogStep5: StateInitFrogModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiFrogFinish(coordinator: OrigamiModel)}
        
        Frog.loadStep5Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
        return StateOrigamiFrogStep6(coordinator: OrigamiModel)
    }
}

class StateOrigamiFrogStep6: StateInitFrogModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiFrogFinish(coordinator: OrigamiModel)}
        
        Frog.loadStep6Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiFrogStep7(coordinator: OrigamiModel)
    }
}

class StateOrigamiFrogStep7: StateInitFrogModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiFrogFinish(coordinator: OrigamiModel)}
        
        Frog.loadStep7Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
        return StateOrigamiFrogStep8(coordinator: OrigamiModel)
    }
}

class StateOrigamiFrogStep8: StateInitFrogModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiFrogFinish(coordinator: OrigamiModel)}
        
        Frog.loadStep8Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiFrogStep9(coordinator: OrigamiModel)
    }
}

class StateOrigamiFrogStep9: StateInitFrogModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiFrogFinish(coordinator: OrigamiModel)}
        
        Frog.loadStep9Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiFrogStep10(coordinator: OrigamiModel)
    }
}

class StateOrigamiFrogStep10: StateInitFrogModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiFrogFinish(coordinator: OrigamiModel)}
        
        Frog.loadStep10Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiFrogStep11(coordinator: OrigamiModel)
    }
}

class StateOrigamiFrogStep11: StateInitFrogModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiFrogFinish(coordinator: OrigamiModel)}
        
        Frog.loadStep11Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiFrogStep12(coordinator: OrigamiModel)
    }
}

class StateOrigamiFrogStep12: StateInitFrogModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiFrogFinish(coordinator: OrigamiModel)}
        
        Frog.loadStep12Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
        return StateOrigamiFrogFinish(coordinator: OrigamiModel)
    }
}


class StateOrigamiFrogFinish: StateInitFrogModel {
    override func rotateModel(angle: Float) {}
    override func next() -> StateOrigami {
        return StateOrigamiFrogFinish(coordinator: OrigamiModel)
    }
}


/* ----------------------------------------------------------------------------------*/

class StateInitShipModel: StateOrigami {
    let OrigamiModel: Coordinator
    init(coordinator: Coordinator) {
        OrigamiModel = coordinator
        
    }
    func rotateModel(angle: Float) {
        
    }
    func next() -> StateOrigami {
        
        guard let view = OrigamiModel.view else { return StateOrigamiShipFinish(coordinator: OrigamiModel)}
        
        Ship.load_initAsync(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        return StateOrigamiShipStep1(coordinator: OrigamiModel)
        
    }
}

class StateOrigamiShipStep1: StateInitShipModel {
    
    override func next() -> StateOrigami {
        
        guard let view = OrigamiModel.view else { return StateOrigamiShipFinish(coordinator: OrigamiModel)}
        
        Ship.loadStep1Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
        return StateOrigamiShipStep2(coordinator: OrigamiModel)
    }
}

class StateOrigamiShipStep2: StateInitShipModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiShipFinish(coordinator: OrigamiModel)}
        
        Ship.loadStep2Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
                
        return StateOrigamiShipStep3(coordinator: OrigamiModel)
    }
}

class StateOrigamiShipStep3: StateInitShipModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiShipFinish(coordinator: OrigamiModel)}
        
        Ship.loadStep3Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })

        return StateOrigamiShipStep4(coordinator: OrigamiModel)
    }
}

class StateOrigamiShipStep4: StateInitShipModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiShipFinish(coordinator: OrigamiModel)}
        
        Ship.loadStep4Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiShipStep5(coordinator: OrigamiModel)
    }
}

class StateOrigamiShipStep5: StateInitShipModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiShipFinish(coordinator: OrigamiModel)}
        
        Ship.loadStep5Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
        return StateOrigamiShipStep6(coordinator: OrigamiModel)
    }
}

class StateOrigamiShipStep6: StateInitShipModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiShipFinish(coordinator: OrigamiModel)}
        
        Ship.loadStep6Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiShipStep7(coordinator: OrigamiModel)
    }
}

class StateOrigamiShipStep7: StateInitShipModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiShipFinish(coordinator: OrigamiModel)}
        
        Ship.loadStep7Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
        return StateOrigamiShipFinish(coordinator: OrigamiModel)
    }
}

class StateOrigamiShipFinish: StateInitShipModel {
    override func rotateModel(angle: Float) {}
    override func next() -> StateOrigami {
        return StateOrigamiShipFinish(coordinator: OrigamiModel)
    }
}

/* ------------------------------------------------------------------------------------- */

class StateInitSwanModel: StateOrigami {
    let OrigamiModel: Coordinator
    init(coordinator: Coordinator) {
        OrigamiModel = coordinator
        
    }
    func rotateModel(angle: Float) {
        
    }
    func next() -> StateOrigami {
        
        guard let view = OrigamiModel.view else { return StateOrigamiShipFinish(coordinator: OrigamiModel)}
        
        Swan.load_initAsync(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
        return StateOrigamiSwanStep1(coordinator: OrigamiModel)
        
    }
}

class StateOrigamiSwanStep1: StateInitSwanModel {
    
    override func next() -> StateOrigami {
        
        guard let view = OrigamiModel.view else { return StateOrigamiSwanFinish(coordinator: OrigamiModel)}
        
        Swan.loadStep1Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
        return StateOrigamiSwanStep2(coordinator: OrigamiModel)
    }
}

class StateOrigamiSwanStep2: StateInitSwanModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiSwanFinish(coordinator: OrigamiModel)}
        
        Swan.loadStep2Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiSwanStep3(coordinator: OrigamiModel)
    }
}

class StateOrigamiSwanStep3: StateInitSwanModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiSwanFinish(coordinator: OrigamiModel)}
        
        Swan.loadStep3Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })

        return StateOrigamiSwanStep4(coordinator: OrigamiModel)
    }
}

class StateOrigamiSwanStep4: StateInitSwanModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiSwanFinish(coordinator: OrigamiModel)}
        
        Swan.loadStep4Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiSwanStep5(coordinator: OrigamiModel)
    }
}

class StateOrigamiSwanStep5: StateInitSwanModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiSwanFinish(coordinator: OrigamiModel)}
        
        Swan.loadStep5Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
        return StateOrigamiSwanStep6(coordinator: OrigamiModel)
    }
}

class StateOrigamiSwanStep6: StateInitSwanModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiSwanFinish(coordinator: OrigamiModel)}
        
        Swan.loadStep6Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiSwanFinish(coordinator: OrigamiModel)
    }
}

class StateOrigamiSwanFinish: StateInitSwanModel {
    override func rotateModel(angle: Float) {}
    override func next() -> StateOrigami {
        return StateOrigamiSwanFinish(coordinator: OrigamiModel)
    }
}

/* ------------------------------------------------------------------------------------- */

class StateInitAirplaneModel: StateOrigami {
    let OrigamiModel: Coordinator
    init(coordinator: Coordinator) {
        OrigamiModel = coordinator
        
    }
    func rotateModel(angle: Float) {
    }
    func next() -> StateOrigami {
        
        guard let view = OrigamiModel.view else { return StateOrigamiAirplaneFinish(coordinator: OrigamiModel)}
        
        Airplane.load_initAsync(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
        return StateOrigamiAirplaneStep1(coordinator: OrigamiModel)
        
    }
}

class StateOrigamiAirplaneStep1: StateInitAirplaneModel {
    
    override func next() -> StateOrigami {
        
        guard let view = OrigamiModel.view else { return StateOrigamiAirplaneFinish(coordinator: OrigamiModel)}
        
        Airplane.loadStep1Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
        return StateOrigamiAirplaneStep2(coordinator: OrigamiModel)
    }
}

class StateOrigamiAirplaneStep2: StateInitAirplaneModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiAirplaneFinish(coordinator: OrigamiModel)}
        
        Airplane.loadStep2Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiAirplaneStep3(coordinator: OrigamiModel)
    }
}

class StateOrigamiAirplaneStep3: StateInitAirplaneModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiAirplaneFinish(coordinator: OrigamiModel)}
        
        Airplane.loadStep3Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })

        return StateOrigamiAirplaneStep4(coordinator: OrigamiModel)
    }
}

class StateOrigamiAirplaneStep4: StateInitAirplaneModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiAirplaneFinish(coordinator: OrigamiModel)}
        
        Airplane.loadStep4Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiAirplaneStep5(coordinator: OrigamiModel)
    }
}

class StateOrigamiAirplaneStep5: StateInitAirplaneModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiAirplaneFinish(coordinator: OrigamiModel)}
        
        Airplane.loadStep5Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
        
        return StateOrigamiAirplaneStep6(coordinator: OrigamiModel)
    }
}

class StateOrigamiAirplaneStep6: StateInitAirplaneModel {
    override func next() -> StateOrigami {
        guard let view = OrigamiModel.view else { return StateOrigamiAirplaneFinish(coordinator: OrigamiModel)}
        
        Airplane.loadStep6Async(completion: {(result) in
                view.scene.anchors.removeAll()
                let boxAnchor = try! result.get()
                view.scene.anchors.append(boxAnchor)
        })
                
        return StateOrigamiAirplaneFinish(coordinator: OrigamiModel)
    }
}

class StateOrigamiAirplaneFinish: StateInitAirplaneModel {
    override func rotateModel(angle: Float) {}
    override func next() -> StateOrigami {
        return StateOrigamiAirplaneFinish(coordinator: OrigamiModel)
    }
}

/* ------------------------------------------------------------------------------------- */

