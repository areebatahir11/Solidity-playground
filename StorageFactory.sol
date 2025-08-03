// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

//import {SimpleStorage} from "./Simplestorage.sol";

//can also import more than one contract

import {SimpleStorage, Simplestorage2} from "./Simplestorage.sol";

contract StorageFactory {
    ////uint256 public favouriteNumber
    ////type visibility name
    ////refering to contract

    // SimpleStorage public mysimpleStorage;//refering to variable

    ////we have used a single variable here that will always initialize from start in order to having
    ////record of previous simple storage deployments we will use array

    SimpleStorage[] public ListOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        //how SrorageFactory knows that simple storage look like??
        //this will be done by placind simple stirage contract in same file as that of
        //storage factory...

        SimpleStorage mysimpleStorage = new SimpleStorage();
        ListOfSimpleStorageContracts.push(mysimpleStorage);

        //how to use function os simplestorage.sol
    }

    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _newsimplestorageNumber
    ) public {
        //we need two main things
        //address
        //ABI - Application Binary Interface
        ListOfSimpleStorageContracts[_simpleStorageIndex].store(_newsimplestorageNumber);
    }
}
