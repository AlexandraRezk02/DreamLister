//
//  ItemDetailsVC.swift
//  DreamLister
//
//  Created by Sandra Rezk on 1/4/17.
//  Copyright © 2017 Sandra Rezk. All rights reserved.
//

import UIKit
import CoreData


class ItemDetailsVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: CustomTextField!
    @IBOutlet weak var priceField: CustomTextField!
    @IBOutlet weak var detailsField: CustomTextField!
    
    var stores = [Store]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let topItem = self.navigationController?.navigationBar.topItem{
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
        storePicker.delegate = self
        storePicker.dataSource = self
        
        //let store = Store(context: context)
        //store.name = "Best Buy"
        //let store2 = Store(context: context)
        //store2.name = "Tesla Dealership"
        //let store3 = Store(context: context)
        //store3.name = "Frys Electronics"
        //let store4 = Store(context: context)
        //store4.name = "Target"
        //let store5 = Store(context: context)
        //store5.name = "Amazon"
        //let store6 = Store(context: context)
        //store6.name = "Kmart"
        
        //ad.saveContext()
        getStores()
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let store = stores[row]
        return store.name
    }

    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stores.count
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        //update when selected
    }
    
    func getStores (){
        let fetchRequest: NSFetchRequest<Store> = Store.fetchRequest()
        do{
            self.stores = try context.fetch(fetchRequest)
            self.storePicker.reloadAllComponents()
        } catch {
            //handle the error
        }
    }
}
