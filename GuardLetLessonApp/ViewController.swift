//
//  ViewController.swift
//  GuardLetLessonApp
//
//  Created by UrataHiroki on 2021/09/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var upperSystemIndigoView: UIView!
    @IBOutlet weak var underSystemIndigoView: UIView!
    @IBOutlet weak var upperTextField: UITextField!
    @IBOutlet weak var underTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        upperSystemIndigoView.layer.cornerRadius = 30.0
        upperSystemIndigoView.layer.maskedCorners = [.layerMinXMaxYCorner]
        
        underSystemIndigoView.layer.cornerRadius = 30.0
        underSystemIndigoView.layer.maskedCorners = [.layerMaxXMinYCorner]
        
        upperTextField.layer.borderColor = UIColor.systemIndigo.cgColor
        upperTextField.layer.borderWidth = 1.0
        upperTextField.borderStyle = .roundedRect
        
        underTextField.layer.borderColor = UIColor.systemIndigo.cgColor
        underTextField.layer.borderWidth = 1.0
        
        addButton.layer.cornerRadius = 10.0
        addButton.layer.shadowOffset = CGSize(width: 3, height: 3)
        addButton.layer.shadowRadius = 10.0
        addButton.layer.shadowOpacity = 0.8
        
        tableView.layer.shadowOffset = CGSize(width: 3, height: 3)
        tableView.layer.shadowRadius = 10.0
        tableView.layer.shadowOpacity = 0.8
        tableView.layer.masksToBounds = false
        
        
    }


}

