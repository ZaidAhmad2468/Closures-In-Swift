//
//  ViewController.swift
//  Closures
//
//  Created by ZAID AHMAD on 24/03/2023.
//

import UIKit

class BooksVC: UIViewController {
    
    var booksArray: [UserBooksModel] = []
    var nextPage = 1
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loadUserBooks(page: nextPage) { [weak self] newItems in
               self?.booksArray.append(contentsOf: newItems)
               self?.nextPage += 1
               // Update UI with new items
           }
    }
    
    
    func loadUserBooks(page: Int, completion: @escaping ([UserBooksModel]) -> Void) {
        
        // Make network request to fetch items for specified page
        BooksService.instance.getUserBooks { succeess, error, books in
            if succeess{
                completion(books ?? [])
               // self?.homeTableview.reloadData()
            }
            else{
                //HANDLE ERROR CASE
            }
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
          let threshold = 100.0 // pixels from bottom
          let scrollHeight = scrollView.contentSize.height
          let scrollPosition = scrollView.contentOffset.y + scrollView.frame.size.height
          if scrollPosition > scrollHeight - threshold {
              loadUserBooks(page: nextPage) { [weak self] newItems in
                  self?.booksArray.append(contentsOf: newItems)
                  self?.nextPage += 1
                  // Update UI with new items
              }
          }
      }

}

