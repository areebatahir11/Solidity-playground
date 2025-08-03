// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// Q6:
// Create a Task struct with string description and bool completed.
// Store tasks in an array.
// Functions:

// addTask(string)

// completeTask(uint index)

// getAllTasks()

contract ArrayStructs {
    struct Task {
        string description;
        bool completed;
    }
    Task[] public tasks;

    function addTask(string memory d) public {
        Task memory t = Task(d, false);
        tasks.push(t);
    }

    function compeleteTASK(uint256 index) public {
        require(index < tasks.length, "invalid index");
        require(tasks[index].completed == false);
        tasks[index].completed = true;
    }

    function GetALlATasks(uint256 i) public view returns (Task memory) {
        require(i < tasks.length, "invalid index");
        return tasks[i];
    }
}
