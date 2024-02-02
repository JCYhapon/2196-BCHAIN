import { useState } from "react";
import reactLogo from "./assets/react.svg";
import viteLogo from "/vite.svg";
import "./App.css";
import Hello from "./components/hello";
import Welcome from "./components/welcome";
import TodoList from "./components/TodoList";
import MovieList from "./components/MovieList";
import BookList from "./components/BookList";

//WEEK 3
import Greeting from "./components/week3/Conditional-Demo-1/greeting";
import ShinyButton from "./components/week3/Conditional-Demo-1/ShinyButton";
import Rainy from "./components/week3/Conditional-Demo-2/Rainy";
import Rainyy from "./components/week3/Conditional-Demo-3/Rainy";
import RainOrShine from "./components/week3/Conditional-Demo-4/RainOrShine";

// PRELIM EXAM SET B
import Prelimexam from "./Conditional Rendering/Prelim-Exam/prelimexam"

function App() {


  return (
    <>
      <h1 className="text-xlg mb-10 font-extrabold tracking-widest">
        Prelim exam - SET B Conditional Rendering
      </h1>
      <div className="rounded-md shadow-md h-[10rem] flex flex-rows items-center justify-center">
      <Prelimexam />
      </div>
      
    </>
  );
}

export default App;
