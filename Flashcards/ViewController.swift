//
//  ViewController.swift
//  Flashcards
//
//  Created by Batkhuu  on 2/13/20.
//  Copyright © 2020 Batkhuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var card: UIView!
    
    @IBOutlet weak var btnOptionOne: UIButton!
    @IBOutlet weak var btnOptionTwo: UIButton!
    @IBOutlet weak var btnOptionThree: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        card.layer.cornerRadius = 20.0
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.9
        
        frontLabel.layer.cornerRadius = 20
        backLabel.layer.cornerRadius = 20
        
        frontLabel.clipsToBounds = true
        backLabel.clipsToBounds = true
        
        btnOptionOne.layer.borderWidth = 3.0
        btnOptionOne.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        btnOptionOne.layer.cornerRadius = 20
        
        
        btnOptionTwo.layer.borderWidth = 3.0
        btnOptionTwo.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        btnOptionTwo.layer.cornerRadius = 20
        
        
        btnOptionThree.layer.borderWidth = 3.0
        btnOptionThree.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        btnOptionThree.layer.cornerRadius = 20
        
    }
    @IBAction func didTapOnFlashcard(_ sender: Any) {

        if self.frontLabel.isHidden == false {
            
            self.frontLabel.isHidden = true
            
        } else {
            
            self.frontLabel.isHidden = false
        }
        
    }

    @IBAction func didTapOptionOne(_ sender: Any) {
        self.btnOptionOne.isHidden = true
    }
    
    @IBAction func didTapOptionThree(_ sender: Any) {
        self.btnOptionThree.isHidden = true
    }
    
    @IBAction func didTapOptionTwo(_ sender: Any) {
        if self.frontLabel.isHidden == false {
            
            self.frontLabel.isHidden = true
            
        } else {
            
            self.frontLabel.isHidden = false
        }
        
    }
    
    @IBAction func onReset(_ sender: Any) {

        self.frontLabel.isHidden = false
        self.btnOptionOne.isHidden = false
        self.btnOptionThree.isHidden = false
        
    }
    
}

