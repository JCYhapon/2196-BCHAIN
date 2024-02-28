// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./4_Structs_demo.sol";

contract Todos {
  // An array of 'Todo' structs
  Todo[] public todos;

  function addTodo(string memory _text, bool _completed) external {
      Todo memory newTodo;
      newTodo.text = _text;
      newTodo.completed = _completed;
      todos.push(newTodo);
  }

  function getTodosCount() external view returns (uint) {
      return todos.length;
  }
}
