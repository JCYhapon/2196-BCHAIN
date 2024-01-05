import React from 'react'

class Welcome extends React.Component {
    render() {
        let message = "I think I've done it";
        return(
           <div>
                <h1>{message}</h1>
                <h4>Welcome, John Carlo</h4>
           </div>
                
          
        );
    }
}

export default Welcome ;