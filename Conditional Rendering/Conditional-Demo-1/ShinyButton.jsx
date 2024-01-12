import React from "react";

//function with an arrown function
function ShinyButton() {
  const handleClick = () => {
    alert("You clicked me!");
  };
  return (
    <button
      className="font-mono text-sm bg-black rounded-md text-white p-2"
      onClick={handleClick}
    >
      Click This Button!
    </button>
  );
}

export default ShinyButton;
