// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract enumUsage {
    enum status {
        pending,
        shipped,
        delivered
    }
    struct Order {
        string item;
        status s;
    }

    Order[] public multipleOrders;

    function addOrders(string memory _items, status _s) public {
        Order memory o = Order(_items, _s);
        multipleOrders.push(o);
    }

function UpdateOrderStatus(uint256 index, status _newStatus)public{
   require(index<multipleOrders.length,"invalid order");
   multipleOrders[index].s=_newStatus;
}
    function getOrder(uint256 index) public view returns (Order memory) {
        require(index<multipleOrders.length,"invalid order");
        return (multipleOrders[index]);
    }
}
