//
//  FirstSelectViewController.swift
//  Novel
//
//  Created by Galina Bolganova on 02.05.2022.
//

import UIKit

class FirstSelectViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var userName: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Отлично, \(userName)! Чем займемся?"
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var typeNamber = 0
        switch segue.identifier {
        case "onRan":
            typeNamber = 4
        case "onHide":
            typeNamber = 5
        case "onWalk":
            typeNamber = 6
        default:
            print("error")
        }
        let destination = segue.destination as? SecondSelectViewController
        destination?.type = typeNamber
     }
}
