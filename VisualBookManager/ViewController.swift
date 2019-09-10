//
//  ViewController.swift
//  VisualBookManager
//
//  Created by Eddie Ahn on 09/09/2019.
//  Copyright © 2019 Eddie Ahn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myBookManager = BookManager()
    
    @IBOutlet var titleText: UITextField!
    @IBOutlet var authorText: UITextField!
    @IBOutlet var genreText: UITextField!
    
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = Books(name: "Who Moved My Cheese", genre: "Business", author: "Spencer Johnson")
        let book2 = Books(name: "7Habits of Highly Effective People ", genre: "Business", author: "Stephen Covey")
        let book3 = Books(name: "The Hunger Games", genre:"Fiction", author: "Suzanne Collins")
        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        countLabel.text = "\(myBookManager.countBooks())"
        
    }
    @IBAction func showAllBookAction(_ sender: Any) {
        textView.text = myBookManager.showAllBooks()
        
    }
    @IBAction func registerAction(_ sender: Any) {
        var bookTemp = Books()
        bookTemp.name = titleText.text!
        bookTemp.author = authorText.text!
        bookTemp.genre = genreText.text!
        myBookManager.registerBook(bookObject: bookTemp)
        textView.text = "\(titleText.text!) has been registered"
        countLabel.text = "\(myBookManager.countBooks())"
    }
    @IBAction func searchAction(_ sender: Any) {
        let resultBook = myBookManager.searchBook(name: titleText.text!)
        if resultBook != nil {
            textView.text = resultBook
        } else {
            textView.text = "We cannot find the book."
        }
    }
    @IBAction func remove(_ sender: Any) {
        myBookManager.removeBook(name: titleText.text!)
        textView.text = "\(titleText.text!) has been removed"
        countLabel.text = "\(myBookManager.countBooks())"
    }
}
