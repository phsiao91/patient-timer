// import logo from './logo.svg';
import './App.css';
import React, { useEffect, useState } from "react";
import Login from './components/Login';
import { Switch, Route } from "react-router-dom";
import NavBar from './components/NavBar';
import Home from './components/Home';
import SignUp from './components/SignUp';

function App() {

  const [user, setUser] = useState(null)


  return (
    <div className="App">
      <NavBar user={user} setUser={setUser}/>
      <main>
        {user? (
          <Switch>
            <Route path="/">
              <Home user={user}/>
            </Route>
          </Switch>
            ) : (
          <Switch>
            <Route path="/login">
              <Login setUser={setUser}/>
            </Route>
            <Route path="/signup">
              <SignUp setUser={setUser}/>
            </Route>
            <Route path="/">
              <Home/>
            </Route>
          </Switch>
            )}
      </main>
    </div>
  );
}

export default App;
