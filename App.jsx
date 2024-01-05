import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Hello from './components/hello'
import  Welcome  from './components/welcome'
import TodoList from './components/TodoList'
import MovieList from './components/MovieList'
import BookList from './components/BookList'


function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <TodoList />
      <MovieList />
      <BookList/>


    </>
  )
}

export default App
