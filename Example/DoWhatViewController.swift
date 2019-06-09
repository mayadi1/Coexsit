//
//  DoWhatViewController.swift
//  Alerts&Pickers
//
//  Created by Mohamed Ayadi on 6/8/19.
//  Copyright © 2019 Supreme Apps. All rights reserved.
//

import UIKit

class DoWhatViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction override func nameButtonTapped(_ sender: UIButton) {
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
    
    @IBAction override func monthSelectButtonTapped(_ sender: UIButton) {
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
    
}
