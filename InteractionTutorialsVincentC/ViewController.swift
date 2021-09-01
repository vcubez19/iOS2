//
//  ViewController.swift
//  InteractionTutorialsVincentC
//
//  Created by Vincent Cubit on 9/1/21.
//


import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var textMessage: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
    }


    @IBAction func changeButton(_ sender: Any) {
        labelResult.text = textMessage.text?.uppercased()
    }
    
    
}

