// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Wallet {

    struct Todo {
        string name;
        bool completed;
    }

    Todo[] public todo;

    function add(string memory name,bool status) public{
      todo.push(Todo({name:name,completed:status}));
    }

    function get(uint index) public view returns(string memory name,bool completed){
        Todo storage todos = todo[index];
        return (todos.name,todos.completed);
    }

    function updateText(uint index,string memory name) public {
        Todo storage todos = todo[index];
        todos.name = name;
    }

    function updateStatus(uint index) public {
        Todo storage todos = todo[index];
        todos.completed = !todos.completed;
    }
}