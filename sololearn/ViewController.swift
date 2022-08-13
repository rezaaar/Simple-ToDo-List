//
//  ViewController.swift
//  sololearn
//
//  Created by Reza Athallah on 13/08/22.
//

import UIKit

class ViewController: UIViewController {
    var item: Item?
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        
        let isInAddMode = presentingViewController is UINavigationController
            
           if isInAddMode {
               self.navigationController?.popViewController(animated: true)
               
               self.dismiss(animated: true, completion: nil)
           }
           else {
             navigationController!.popViewController(animated: true)
           }

        
    }
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func setLabelText(_ sender: UIButton) {
        nameLabel.text = nameTextField.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let item = item {
             nameTextField.text = item.name
          }
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if sender as AnyObject? === saveButton {
        let name = nameTextField.text ?? ""
        item = Item(name: name)
      }
    }


}

