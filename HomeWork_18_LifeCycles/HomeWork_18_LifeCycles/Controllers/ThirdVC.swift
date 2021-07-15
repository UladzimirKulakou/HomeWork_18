//
//  ThirdVC.swift
//  HomeWork_18_LifeCycles
//
//  Created by Владимир  on 7/15/21.
//  Copyright © 2021 Владимир . All rights reserved.
//

import UIKit


class ThirdVC: UIViewController {

    @IBOutlet weak var nameOfAvatar: UILabel!
    
    var nameForDisplay: String?
    
    private var observer: NSObjectProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        observer = NotificationCenter.default.addObserver(forName: UIApplication.willEnterForegroundNotification, object: nil, queue: .main) { [weak self] notification in
            self?.navigationController?.popToRootViewController(animated: true)
        }
        
        nameOfAvatar.text = nameForDisplay
        
    }
    
    
    
    
    
    deinit {
        if let observer = observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }
    
  

}


