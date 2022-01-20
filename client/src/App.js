import './App.css';
import Home from "./Components/Home.js"
import Login from "./Components/Login.js"
import {BrowserRouter as Router, Routes, Route} from "react-router-dom"

function App() {
  return (
    <div className="App">
      <Router>
        <Routes>
          <Route exact path="/" element={<Home/>}/>
          <Route exact path="log-in" element={<Login/>}/>
        </Routes>
      </Router>
    </div>
  );
}

export default App;
