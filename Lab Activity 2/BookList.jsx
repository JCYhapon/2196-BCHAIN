import React from 'react'

class BookList extends React.Component {
    render() {
        let first_list = "Their Little Secret";
        let second_list = "The Public Relations";
        let third_list = "The Great Gatsby";
        return(
           <div>
                <h1>BOOK LIST</h1>
                <p>{first_list}</p>
                <p>{second_list}</p>
                <p>{third_list}</p>
           </div>
                
          
        );
    }
}

export default BookList ;