//
//  PikachuViewController.swift
//  ColorChange
//
//  Created by 林仲翔 on 2018/5/8.
//  Copyright © 2018年 林仲翔. All rights reserved.
//

import UIKit

class PikachuViewController: UIViewController {
    @IBOutlet weak var seedImage: UIImageView!
    @IBOutlet weak var pikachuImage: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var speakLabel: UILabel!
    @IBAction func redSlider(_ sender: UISlider) {
        pikachuImage.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        if sender == redSlider{
            redLabel.text = "\(redSlider.value)"                }
        else if sender == blueSlider {
            blueLabel.text = "\(blueSlider.value)"                }
        else if sender == greenSlider {
            greenLabel.text = "\(greenSlider.value)"                }
        else if sender == alphaSlider {
            alphaLabel.text = "\(alphaSlider.value)"                }
        if redSlider.value == 1 && greenSlider.value == 1 && blueSlider.value == 0 && alphaSlider.value == 1{
            speakLabel.text = "pika~pika~chu~"
        }
        else if redSlider.value == 0 && greenSlider.value == 1 && blueSlider.value == 0 && alphaSlider.value == 1{
            speakLabel.text = "pi~k..a.."
        }
        else{
            speakLabel.text = ""
        }
        if alphaSlider.value == 0{
            seedImage.alpha = 1
        }
        else{
            seedImage.alpha = 0
        }
        redLabel.text = String(format:"%.2f",redSlider.value)
        greenLabel.text = String(format:"%.2f",greenSlider.value)
        blueLabel.text = String(format:"%.2f",blueSlider.value)
        alphaLabel.text = String(format:"%.2f",alphaSlider.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
