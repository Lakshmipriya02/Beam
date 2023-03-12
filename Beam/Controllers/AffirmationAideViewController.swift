//
//  AffirmationAideViewController.swift
//  Beam
//
//  Created by Advikaa Ramesh on 09/03/23.
//

import UIKit
import CoreLocation

class AffirmationAideViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        struggleDropdown.delegate = self
        struggleDropdownPicker.delegate = self
        struggleDropdownPicker.dataSource = self
        setstruggleDropdownPicker()
        // Do any additional setup after loading the view.
    }
    
    func setstruggleDropdownPicker(){
        let doneBar = UIToolbar()
        doneBar.layer.borderWidth = 1
        doneBar.sizeToFit()
        let alignSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let done = UIBarButtonItem(title: "Done", style: .done, target: nil, action: #selector(struggleDropdownPickerDone))
        doneBar.setItems([alignSpace, done], animated: false)
        
        struggleDropdown.inputView = struggleDropdownPicker
        struggleDropdown.inputAccessoryView = doneBar
        struggleDropdownPicker.backgroundColor = UIColor.white
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == struggleDropdownPicker{
            return struggleDropdownValues.count
        }
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == struggleDropdownPicker{
            return struggleDropdownValues[row]
        }
        return struggleDropdownValues[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 40
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == struggleDropdownPicker{
            struggleDropdown.text = struggleDropdownValues[row]
        
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == struggleDropdown{
            struggleDropdownPickerDone()
        }
    }
    
    @objc func struggleDropdownPickerDone(){
        switch struggleDropdownName{
        case "Self-Esteem":
            print("Self-Esteem")
        case "Confidence":
            print("Confidence")
        case "Body-Image":
            print("Body-Image")
        case "Lonliness":
            print("Lonliness")
        case "Anxiety and Stress":
            print("Anxiety and Stress")
        case "Demotivation":
            print("Demotivation")
        default:
            print("Struggles")
        }
        struggleDropdown.resignFirstResponder()
    }
    
    
    
    
    @IBOutlet weak var struggleDropdown: UITextField!
    var struggleDropdownPicker = UIPickerView()
    let struggleDropdownValues = ["Self-Esteem","Confidence","Body-Image","Lonliness","Anxiety and Stress", "Demotivation"]
    var struggleDropdownName:String = "NA"
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
/*extension AffirmationAideViewController: UICollectionViewDelegate{
    
}
extension AffirmationAideViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "", for: indexPath)
        return cell
    }
    
    
}
extension AffirmationAideViewController: UICollectionViewDelegateFlowLayout{
    
}*/
