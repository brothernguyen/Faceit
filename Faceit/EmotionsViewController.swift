//
//  EmotionsViewController.swift
//  Faceit
//
//  Created by Anh Tuan Nguyen on 3/22/17.
//  Copyright © 2017 com.Project36. All rights reserved.
//

import UIKit

class EmotionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    
    private let emotionalFaces: Dictionary<String, FacialExpression> = [
        "angry":FacialExpression(eyes: .Closed, eyeBrows: .Furrowed, mouth: .Frown),
        "happy":FacialExpression(eyes: .Open, eyeBrows: .Normal, mouth: .Smile),
        "worried":FacialExpression(eyes: .Open, eyeBrows: .Relaxed, mouth: .Smirk),
        "mischie":FacialExpression(eyes: .Open, eyeBrows: .Furrowed, mouth: .Grin),
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVc = segue.destination
        if let vc = destinationVc as? FaceViewController {
            if let identifier = segue.identifier {
                if let expression = emotionalFaces[identifier] {
                    vc.expression = expression
                }
            }
        }
    } 
}
