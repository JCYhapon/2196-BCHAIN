import React from "react";
<script src="https://cdn.tailwindcss.com"></script>;

//comparing functions
export default function Greeting() {
  return (
    <h1 className="font-mono mt-5 mb-5">Hello! I am a standard function.</h1>
  );
}

const ArrowGreeting = () => <h1>Hello! I am an arrow function.</h1>;
