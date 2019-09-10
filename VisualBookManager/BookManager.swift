//
//  BookManager.swift
//  BookManager
//
//  Created by Eddie Ahn on 09/09/2019.
//  Copyright © 2019 Eddie Ahn. All rights reserved.
//

import UIKit

class BookManager {
    var bookList = [Books]()
    func registerBook(bookObject:Books) {
        bookList += [bookObject]
        
    }
    func showAllBooks() -> String {
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "Name: \(bookTemp.name!)\n"
            strTemp += "Genre: \(bookTemp.genre!)\n"
            strTemp += "Author: \(bookTemp.author!)\n"
            strTemp += "-------------------\n"
        }
        return strTemp
    }
    func countBooks() -> Int {
        return bookList.count
    }
    func searchBook(name:String) -> String? {
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name == name {
                strTemp += "Name: \(bookTemp.name!)\n"
                strTemp += "Genre: \(bookTemp.genre!)\n"
                strTemp += "Author: \(bookTemp.author!)\n"
                strTemp += "-------------------\n"
                return strTemp
            }
        }
        return nil
    }
    func removeBook(name:String) {
        for (index, value) in bookList.enumerated() {
            if value.name == name {
                bookList.remove(at: index)
            }
        }
    }
}
