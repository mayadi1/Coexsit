//
//  BaseViewController.swift
//  Alerts&Pickers
//
//  Created by Mohamed Ayadi on 6/8/19.
//  Copyright © 2019 Supreme Apps. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHideKeyboardOnTap()
    }
    
    @IBAction func nameButtonTapped(_ sender: UIButton) {
        let alert = UIAlertController(style: .actionSheet, title: "Picker a person", message: nil)
        
        let frameSizes: [CGFloat] = (150...400).map { CGFloat($0) }
        let pickerViewValues = ["Silvia", "Stephanie", "Deidre"]
        let pickerViewSelectedValue: PickerViewViewController.Index = (column: 0, row: frameSizes.index(of: 216) ?? 0)
        
        alert.addPickerView(values: [pickerViewValues], initialSelection: pickerViewSelectedValue) { vc, picker, index, values in
            DispatchQueue.main.async {
                sender.setTitle(values.first![index.row], for: .normal)
                UIView.animate(withDuration: 1) {
                    vc.preferredContentSize.height = frameSizes[index.row]
                }
            }
        }
        alert.addAction(title: "Done", style: .cancel)
        alert.show()
    }
    
    @IBAction func monthSelectButtonTapped(_ sender: UIButton) {
        let alert = UIAlertController(style: .actionSheet, title: "Picker an option", message: nil)
        
        let frameSizes: [CGFloat] = (150...400).map { CGFloat($0) }
        let pickerViewValues = ["Every week", "Twice a week", "Every month", "Twice a month"]
        let pickerViewSelectedValue: PickerViewViewController.Index = (column: 0, row: frameSizes.index(of: 216) ?? 0)
        
        alert.addPickerView(values: [pickerViewValues], initialSelection: pickerViewSelectedValue) { vc, picker, index, values in
            DispatchQueue.main.async {
                sender.setTitle(values.first![index.row], for: .normal)
                UIView.animate(withDuration: 1) {
                    vc.preferredContentSize.height = frameSizes[index.row]
                }
            }
        }
        alert.addAction(title: "Done", style: .cancel)
        alert.show()
    }
    
    @IBAction func dateButtonTapped(_ sender: UIButton) {
        let alert = UIAlertController(style: .actionSheet, title: "Select date")
        alert.addDatePicker(mode: .dateAndTime, date: Date(), minimumDate: Date(), maximumDate: Calendar.current.date(byAdding: .year, value: 1, to: Date())) { date in
            // action with selected date
            sender.setTitle("\(date.month)/\(date.day)/\(date.year)", for: .normal)
            self.isEditing = false
        }
        alert.addAction(title: "OK", style: .cancel)
        alert.show()
    }
}
