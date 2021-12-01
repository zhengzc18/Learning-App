//
//  ContentModel.swift
//  Learning_App
//
//  Created by JAESOON on 2021/11/30.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    
    var styleData: Data?
    
    init() {
        
        getLocalData()
        
    }
    
    func getLocalData() {
        
        // get a url to the json file
        let url = Bundle.main.url(forResource: "data", withExtension: "json")

        // Read the file into a data object
        do {
            let jsonData = try Data(contentsOf: url!)
            
            // Try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            // Assign parsed modules to modules property
            self.modules = modules
        }
        
        catch {
            // TODO log error
            print("error")
        }
        
        // Parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
       
        do {
            // Read the file into a data object
            let styleData = try Data(contentsOf: styleUrl!)
            
            self.styleData = styleData
        }
        
        catch {
            
            print("error with style data")
        }
    }
}
