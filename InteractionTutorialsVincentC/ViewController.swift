//
//  ViewController.swift
//  InteractionTutorialsVincentC
//
//  Created by Vincent Cubit on 9/1/21.
//


import UIKit


class ViewController: UIViewController {

    
    // MARK: Properties
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var textDisplay: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
    }

    
    // MARK: Methods
    @IBAction func changeButton(_ sender: Any) {
        labelResult.text = textDisplay.text?.uppercased()
    }
    
    
}

