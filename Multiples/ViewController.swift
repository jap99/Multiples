//
//  ViewController.swift
//  Multiples
//
//  Created by Javid Poornasir on 6/24/16.
//  Copyright © 2016 Javid Poornasir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var startingValue = 0
    var enteredValue: Int!
    var newValue: Int!
    

    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var pressAddLbl: UILabel!
    
    @IBOutlet weak var multiplesLbl: UIImageView!
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBAction func playBtnPressed(sender: UIButton) {
        if txtField.text != nil && txtField.text != "" {
            
            playBtn.hidden = true
            txtField.hidden = true
            multiplesLbl.hidden = true
            
            pressAddLbl.hidden = false
            addBtn.hidden = false
            
            
            
        }
    }
    
    @IBAction func addBtnPressed(sender: UIButton) {
        
            
        enteredValue = Int(txtField.text!)!
        newValue = startingValue + enteredValue
        updatePressAddLbl()
        startingValue = newValue
        
        if isGameOver() {
            restartGame()
        }
        
        
        
    }
    
    func isGameOver() -> Bool {
        if newValue >= enteredValue * 6 {
            return true
        } else {
            return false
        }
    }
    
    func updatePressAddLbl() {
        pressAddLbl.text = "\(startingValue) + \(enteredValue) = \(newValue)"
    }
    
    func restartGame() {
        playBtn.hidden = false
        txtField.hidden = false
        multiplesLbl.hidden = false
        
        pressAddLbl.hidden = true
        addBtn.hidden = true
        
        startingValue = 0
        txtField.text = ""
        pressAddLbl.text = "Press Add to add!"
        newValue = nil
        enteredValue = nil
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

