import './App.css';
import {useState, useEffect} from 'react';
import {BrowserRouter as Routes, Route} from 'react-router-dom';
import Header from './Header';
import CustomerContainer from './CustomerContainer';
import HousingContainer from './HousingContainer';
import Login from './Login';
import Home from './Home';

function App() {

  const [customers, setCustomers] = useState([])
  const [housings, setHousings] = useState([])
  // const [appointments, setAppointments] = useState([])

  useEffect(() => {

  fetch("/customers")
  
  .then( r => r.json())
  .then(data => setCustomers(data))
  }, [])

  
  
  
  useEffect(() => {

  fetch("/housings")

  .then(r => r.json())
  .then(data => setHousings(data))
  }, [])


  // useEffect(() => {

  //   fetch("/appointments")
  
  //   .then(r => r.json())
  //   .then(data => setAppointments(data))
  //   }, [])
  
  function handleLogin(customers) {
    setCustomers(customers);
  }

  function handleLogout() {
    setCustomers(null);
  }


  return (
    <div className="App">
      <h1> Hi! </h1>
      <Header  customers={customers} onLogout={handleLogout}/>
      {/* <Routes>
        <Route path="/housing">
          <HousingContainer housings={housings} />
        </Route>
        <Route exact path="/login">
          <Login onLogin={handleLogin} />
        </Route>
        
        <Route path="/customer">
          <CustomerContainer customers={customers}  />
        </Route>
        <Route exact path="/">
          <Home />
        </Route>
      </Routes> */}


      {/* <CustomerContainer customers={customers}/>
      <HousingContainer housings={housings}/> */}

      
    </div>
  );
}

export default App;

// {/* <Route path="/appointment">
//           <Appointments/>
//         </Route> */}