//
//  Book.swift
//  PublicLibrary
//
//  Created by Leonardo Lee on 6/17/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import Foundation

class Book {
	var name: String
	
	func enshelf( theLibrary library: Library, index: Int) {
		library.shelves[index].books.append(self)
		//			One problem... the object that is within hand still exists.
	}
	func unshelf( library: Library ) -> Book {
		//			Add the code...
		
		return self
	}
	init(bookName: String) {
		name = bookName
	}	
}