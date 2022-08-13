//
//  Item.swift
//  sololearn
//
//  Created by Reza Athallah on 13/08/22.
//

import Foundation




class Item: NSObject, NSCoding {
    var name: String
    static let Dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = Dir.appendingPathComponent("items")
    init?(name: String) {
        self.name = name
        super.init()
    }
    required convenience init?(coder: NSCoder) {
        let name = coder.decodeObject(forKey: "name") as! String
        self.init(name: name)
    }
    
    func encode(with coder: NSCoder) { coder.encode(name, forKey: "name") }
    
}
