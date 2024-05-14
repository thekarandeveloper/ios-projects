//
//  ViewController.swift
//  Light-Project
//
//  Created by STUDENT on 02/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true

    @IBOutlet weak var button1: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateUI()
        
    }
    
    fileprivate func updateUI() {
        
        lightOn.toggle()
        
        if lightOn{
            view.backgroundColor = .black
        } else {
            view.backgroundColor = .white
        }
        
        //        view.backgroundColor = lightOn ? .black : .white
        
    }
    
    @IBAction func buttonPresssed(_ sender: Any) {
        view.backgroundColor = .orange
        updateUI()
     

        }
    
    func myFunc() {
        
    }
    
}


