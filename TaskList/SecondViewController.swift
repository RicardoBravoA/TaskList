//
//  SecondViewController.swift
//  TaskList
//
//  Created by Ricardo Bravo Acuña on 11/06/16.
//  Copyright © 2016 Ricardo Bravo Acuña. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        txt.delegate = self
        txt.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addTask(sender: AnyObject) {
        addData()
    }
    
    func addData(){
        todoList.append(txt.text!)
        NSUserDefaults.standardUserDefaults().setObject(todoList, forKey: nameDefault)
        self.txt.text = ""
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        addData()
        return true
    }

}

