//
//  ViewController.swift
//  UIApp
//
//  Created by Ilya Pavlov on 11.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var englishWords: [String ] = ["Car", "Door", "Cow", "Love", "Image"]
    var russianWords: [String] = ["Машина", "Дверь", "Корова", "Любовь", "Картинка"]
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var translateLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        translateLabel.isHidden = true
        textLabel.isHidden = true
        textLabel.textColor = .systemGray
        textLabel.font = textLabel.font.withSize (35)
        translateLabel.font = textLabel.font.withSize (25)
        button.setTitle("Нажми, чтобы начать", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            let randomNumber = Int.random(in: 0...englishWords.count - 1)

            if  textLabel.isHidden == true && translateLabel.isHidden == true || textLabel.isHidden == false && translateLabel.isHidden == false {
                translateLabel.isHidden = true
                textLabel.text = "\(russianWords[randomNumber])"
                textLabel.isHidden = false
                button.setTitle("Проверить", for: .normal)
            } else if textLabel.isHidden == false && translateLabel.isHidden == true {
                
                let number = russianWords.firstIndex(of: textLabel.text ?? "")
                translateLabel.text = "\(englishWords[number ?? 0])"
                translateLabel.isHidden = false
                button.setTitle("Далее", for: .normal)
            }
        case 1:
            let randomNumber = Int.random(in: 0...4)

            if  textLabel.isHidden == true && translateLabel.isHidden == true || textLabel.isHidden == false && translateLabel.isHidden == false {
                translateLabel.isHidden = true
                textLabel.text = "\(englishWords[randomNumber])"
                textLabel.isHidden = false
                button.setTitle("Проверить", for: .normal)
            } else if textLabel.isHidden == false && translateLabel.isHidden == true {
                
                let number = englishWords.firstIndex(of: textLabel.text ?? "")
                translateLabel.text = "\(russianWords[number ?? 0])"
                translateLabel.isHidden = false
                button.setTitle("Далее", for: .normal)
            }
        default: break
            
        }
            
    }
    
    
    @IBAction func chooseSegement(_ sender: UISegmentedControl) {
        translateLabel.isHidden = true
        textLabel.isHidden = true
    }
    
}

