import React from 'react'
import classes from './TodoList.module.css';

class TodoList extends React.Component {
    render() {
        let first_list = "Doing some assignments";
        let second_list = "Cleaning computer";
        let third_list = "Washing the car";
        return(
           <div>
            <h1 className='todolist' id='todolist'>TODO LIST</h1>
            <ul>
                <li><p>{first_list}</p></li>
                <li><p>{second_list}</p></li>
                <li><p>{third_list}</p></li>
            </ul>
                
           </div>
                
          
        );
    }
}

export default TodoList ;