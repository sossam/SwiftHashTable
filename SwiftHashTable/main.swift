//
//  main.swift
//  SwiftHashTable
//
//  Created by 김소은 on 2021/01/05.
//

import Foundation

var hashTable: [String?] = .init(repeating: nil, count: 3)

func hash(key: Int) -> Int {
    return key % 3
}

func updateValue(_ value: String, forKey key: String) {
    guard let key = UnicodeScalar(key)?.value else { return }
    let hashAddress = hash(key: Int(key))
    hashTable[hashAddress] = value
}

func getValue(forKey key: String) -> String? {
    guard let key = UnicodeScalar(key)?.value else { return nil }
    let hashAddress = hash(key: Int(key))
    return hashTable[hashAddress]
}



updateValue("재석", forKey: "유")
updateValue("명수", forKey: "박")
updateValue("소들", forKey: "김")


getValue(forKey: "유")
getValue(forKey: "박")
getValue(forKey: "유")


