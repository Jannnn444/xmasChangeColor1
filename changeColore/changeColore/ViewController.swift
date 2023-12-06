//
//  ViewController.swift
//  changeColore
//
//  Created by yucian huang on 2023/12/5.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var christmasKittyImageView: UIImageView!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view.
    }

    @IBAction func changeColor(_ sender: UISlider) {
        
        christmasKittyImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))    }
    
    @IBAction func randomButton(_ sender: UIButton) {
        
        redSlider.setValue(.random(in: 0...1), animated: true)
        greenSlider.setValue(.random(in: 0...1), animated: true)
        blueSlider.setValue(.random(in: 0...1), animated: true)
        alphaSlider.setValue(.random(in: 0...1), animated: true)
       
        christmasKittyImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))    }
    
        
//        redSlider.value = Float.random(in: 0...1)
//        greenSlider.value = .random(in: 0...1)
//        blueSlider.value = .random(in: 0...1)
//        christmasKittyImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))    }
    
}


#Preview {
let storyboard = UIStoryboard(name: "Main", bundle: nil)
return storyboard.instantiateViewController(withIdentifier: "ViewController")
}


