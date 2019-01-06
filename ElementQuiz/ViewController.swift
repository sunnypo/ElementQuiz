//
//  ViewController.swift
//  ElementQuiz
//
//  Created by 黄思源 on 2019/1/4.
//  Copyright © 2019 supencil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func showAnswer(_ sender: AnyObject) {
        answerLabel.text = elementList[currentElementIndex]
    }
    @IBAction func goNextElement(_ sender: AnyObject) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
    struct ChemicalElement {
        let symbol : String
        let name : String
        let automicWeight : Int
        let imageName : String
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

