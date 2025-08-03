// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract BookContract {
    struct Book {
        string author;
        string title;
    }

    Book[] public books;
    function addBook(string memory _title, string memory _author)public{
        Book memory newBook= Book(_title,_author);
        books.push(newBook);
    }

    function getBook(uint256 index) public view returns(string memory){
       return books[index].title;
       
    }
}
