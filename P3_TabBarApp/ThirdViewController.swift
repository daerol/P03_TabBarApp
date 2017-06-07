//
//  ThirdViewController.swift
//  P3_TabBarApp
//
//  Created by ITP312 on 24/4/17.
//  Copyright © 2017 ITP312. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var singlePicker : UIPickerView!
    
    // declare a string array
    var pickerData : [String]
    var pickerData2 : [String]
    
    // declare an event that will be triggered when
    // a button is pressed.
    //
    // We will need to hook this up to the actual 
    // button in the storyboard later.
    
    @IBAction func buttonPressed(sender: AnyObject) {
        // Here we find out which row in the 1st component was 
        // selected by the user
        
        let row = singlePicker.selectedRow(inComponent: 0)
        
        
        // Then we get the actual data from our
        // pickerData array.
        
        let selected = pickerData[row]
        let selected2 = pickerData2[row]
        
        // Then we show an alert with the selected data.
        //
        
        let uiAlert = UIAlertController(
        title: "You select \(selected) and \(selected2)",
        message: "Thank you for choosing",
        preferredStyle: UIAlertControllerStyle.alert)
        
        uiAlert.addAction(UIAlertAction(title: "You are welcome", style: .default,handler: nil))
        self.present(uiAlert, animated:true, completion: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        // Initialize the pickerData string array with
        // some data.
        
        self.pickerData =  [
        "Strawberry",
        "Orange",
        "Mango",
        "Cherry",
        "Banana",
        "Coconut",
        "Kiwi"
        ]
        
        
        self.pickerData2 =  [
            "Juicy",
            "Tasty",
            "Sweet",
            "Bland"
        ]
        
        super.init(coder : aDecoder)
    }
    
    
    // This function is one of the functions that a delegate for 
    // the UIPickerDataSource should implement. It tells the 
    // UIPicker how many components (vertical sections)
    // there are in the list to display
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // This function is one the functions that a delegate for 
    // the UIPickerDataSource should implement. it tells the UIPicker
    // how many items in the list to display for a given component
    // (vertical section)
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        // calling the pickerView method twice because the components is 2
        
        if component == 0 {
            return pickerData.count
        } else if component == 1 {
            return pickerData2.count
        }
        
        return 0
        
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        if component == 0 {
            return pickerData[row]
        } else if component == 1 {
            return pickerData2[row]
        }
        
        return ""
    }
    
    
    
    // Default template codes

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
