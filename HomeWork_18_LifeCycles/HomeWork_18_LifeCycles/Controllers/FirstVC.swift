//
//  FirstVC.swift
//  HomeWork_18_LifeCycles
//
//  Created by Владимир  on 7/15/21.
//  Copyright © 2021 Владимир . All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var textToNewName: UITextField!
    
    var nameForTransfer: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard segue.identifier == "transferDateToSecondVC" else { return }
                guard let destination = segue.destination as? SecondVC else { return }
        destination.nameForCorrect = nameForTransfer
            }
        
   
    @IBAction func createNameButton(_ sender: UIButton) {
    }
    
    @IBAction func textFieldToCreateName(_ sender: UITextField) {
        nameForTransfer =  textToNewName.text
    }
    
    
}
