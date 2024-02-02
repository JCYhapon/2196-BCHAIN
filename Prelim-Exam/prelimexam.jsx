import React from "react";


function Color() {
  return (
    <div className="flex flex-col justify-center items-center">
        <div>
        <h1 className="font-mono bg-green-500 w-[20rem]">My Strawhat!</h1>
        </div>
       <div>
       <h1 className="font-mono bg-green-500 w-[20rem]">Gum gum Fruit</h1>
       </div>
        <div>
        <h1 className="font-mono bg-red-500 w-[20rem]">The Red Vest</h1>
        </div>
        
  </div>
  )
  
 ;
  
}

function ColorOrNot(props) {
  const isRainy = props.isRainy;
  if (isRainy) {
    return <Color />;
  }
  return (
    <div>
        <h1 className="font-mono ">My Strawhat!</h1>
        <h1 className="font-mono ">Gum gum Fruit</h1>
        <h1 className="font-mono ">The Red Vest</h1>
    </div>
  );
}

export default function App() {
  return (
    <div>
        
        <ColorOrNot isRainy={false} />
        
      
    </div>
  );
}

