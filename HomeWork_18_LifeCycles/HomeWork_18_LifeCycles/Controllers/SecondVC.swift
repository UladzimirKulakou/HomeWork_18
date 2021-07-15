//
//  SecondVC.swift
//  HomeWork_18_LifeCycles
//
//  Created by Владимир  on 7/15/21.
//  Copyright © 2021 Владимир . All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var nameAfterCreate: UILabel!
    @IBOutlet weak var textFieldForCorrect: UITextField!
    
    var nameForCorrect: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameAfterCreate.text = nameForCorrect

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "transferDataToThirdVC" else {return}
        guard let destination = segue.destination as? ThirdVC else { return }
        destination.nameForDisplay = nameAfterCreate.text
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


    @IBAction func buttonForCorrect(_ sender: UIButton) {
        nameAfterCreate.text = textFieldForCorrect.text
    }
    
    @IBAction func buttonForApply(_ sender: UIButton) {
    }
}
