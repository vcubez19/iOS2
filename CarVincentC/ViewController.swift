//
//  ViewController.swift
//  CarVincentC
//
//  Created by Vincent Cubit on 9/6/21.
//


import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var carImage: UIImageView!
    var selected: Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    @IBAction func setBlack(_ sender: Any) {
        self.carImage.image = UIImage(named: "black-lambo.png")
    }
    
    
    @IBAction func setGreen(_ sender: Any) {
        self.carImage.image = UIImage(named: "green-lambo.png")
    }
    
    
    @IBAction func setOrange(_ sender: Any) {
        self.carImage.image = UIImage(named: "orange-lambo.png")
    }
    
    
    @IBAction func setYellow(_ sender: Any) {
        self.carImage.image = UIImage(named: "yellow-lambo.png")
    }
    

    @IBAction func didTapTireImage(_ sender: AnyObject) {
        
        
        if sender.tag == 1 {
            self.toggleImages(sender: sender, original: "summer-tire.png")
        } else if sender.tag == 2 {
            self.toggleImages(sender: sender, original: "winter-tires.png")
        } else {
            self.toggleImages(sender: sender, original: "all-season-tires.png")
        }
    
        
    }
    
    
    func toggleImages(sender: AnyObject, original: String, toggleTo: String = "checkmark.png") {
        
        self.selected = !self.selected
        
        if !self.selected {
            sender.setImage(UIImage(named: toggleTo), for: .normal)
        } else {
            sender.setImage(UIImage(named: original), for: .normal)
        }
        
    }
    
    
    @IBAction func didTapOrder(_ sender: Any) {
        print("Thanks for ordering!")
    }
    
    
}
