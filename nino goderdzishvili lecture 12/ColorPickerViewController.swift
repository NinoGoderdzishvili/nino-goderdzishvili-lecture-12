//
//  ColorPickerViewController.swift
//  nino goderdzishvili lecture 12
//
//  Created by Nino Goderdzishvili on 11/16/22.
//

import UIKit

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var redBtn: UIButton!
    @IBOutlet weak var yellowBtn: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    @IBOutlet weak var blueBtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func redBtnClicked(_ sender: Any) {
        changeColorForBtn(color: .red)
    }
    
    @IBAction func choosePageColorRedBtn(_ sender: Any) {
        changeBackgroundColor(color: .red)
    }
    
    @IBAction func yellowBtnClicked(_ sender: Any) {
        changeColorForBtn(color: .yellow)
    }
    @IBAction func choosePageColorYellowBtn(_ sender: Any) {
        changeBackgroundColor(color: .yellow)
    }
    
    @IBAction func greenBtnClicked(_ sender: Any) {
        changeColorForBtn(color: .green)
    }
    @IBAction func choosePageColorGreenBtn(_ sender: Any) {
        changeBackgroundColor(color: .green)
    }
    
    @IBAction func blueBtnClicked(_ sender: Any) {
        changeColorForBtn(color: .blue)
    }
    @IBAction func choosePageColorBlueBtn(_ sender: Any) {
        changeBackgroundColor(color: .blue)
    }
    
    @IBAction func orangeBtnClicked(_ sender: Any) {
        changeColorForBtn(color: .orange)
    }
    @IBAction func choosePageColorOrangeBtn(_ sender: Any) {
        changeBackgroundColor(color: .orange)
    }
    
    func changeColorForBtn(color: UIColor) {
        
        let vc = getViewController()
        
        vc.buttonColor = color

        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    func changeBackgroundColor(color: UIColor) {
        let vc = getViewController()
        
        vc.viewBackgroundColor = color
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    func getViewController() -> ViewController {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)

        guard let vc = storyBoard.instantiateViewController(withIdentifier: "FirstVC") as? ViewController else {
            return storyBoard.instantiateInitialViewController() as! ViewController
        }
        
        return vc
    }
}
