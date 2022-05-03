//
//  AddNameViewController.swift
//  Novel
//
//  Created by Galina Bolganova on 01.05.2022.
//

import UIKit

class AddNameViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
     
        super.viewDidLoad()
        let spacerView = UIView(frame:CGRect(x:0, y:0, width:16, height:16))
        nameTextField.leftViewMode = UITextField.ViewMode.always
        nameTextField.leftView = spacerView
        nameTextField.attributedPlaceholder = NSAttributedString(
            string: "Введите свое имя...",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? FirstSelectViewController
        if (nameTextField.text == ""){
            destination?.userName = "незнакомец"
        }
        else{
            destination?.userName = nameTextField.text!
        }
      
     }
}
