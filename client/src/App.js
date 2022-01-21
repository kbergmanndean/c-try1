import './App.css';
import Home from "./Components/Home.js"
import Login from "./Components/Login.js"
import {Routes, Route} from "react-router-dom"

function App() {
  return (
    <div className="App">
        <Routes>
          <Route exact path="/" element={<Home/>}/>
          <Route exact path="log-in" element={<Login/>}/>
        </Routes>
    </div>
  );
}

export default App;
