import React from 'react'


export default function MovieList() { 
    let first_list = "Avatar";
    let second_list = "Planet of the Apes";
    let third_list = "Twilight Saga";
    return(
       <div>
            <h1>MOVIE LIST</h1>
            <p>{first_list}</p>
            <p>{second_list}</p>
            <p>{third_list}</p>
       </div>
            
      
    );
}