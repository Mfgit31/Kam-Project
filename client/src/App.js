import './App.css';
import {useState, useEffect} from 'react';
import {Switch, Route} from 'react-router-dom';
import Header from './Header';
import CustomerContainer from './CustomerContainer';
import HousingContainer from './HousingContainer';
import AppointmentContainer from './AppointmentContainer';
import Login from './Login';
import Home from './Home';

function App() {

  const [customers, setCustomers] = useState([])
  const [housings, setHousings] = useState([])
  const [appointments, setAppointments] = useState([])

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

  useEffect(() => {

  fetch("/appointments")
  
  .then(r => r.json())
  .then(data => setAppointments(data))
  }, [])
  
  // useEffect(() => {
  //   fetch("/me").then((response) => {
  //     if (response.ok) {
  //       response.json().then((customers) => setCustomers(customers));
  //     }
  //   });
  // }, []);

  // if (customers) {
  //   return <h2>Welcome, {customers.username}!</h2>;
  // } else {
  //   return <Login onLogin={setCustomers} />;
  // }

  function handleLogin(customers) {
    setCustomers(customers);
  }

  function handleLogout() {
    setCustomers(null);
  }


  return (
    <div className="App">
      <h1> Hello World! </h1>
      <Header  customers={customers} onLogout={handleLogout}/>
      <Switch>
        <Route path="/housing">
          <HousingContainer housings={housings} />
        </Route>
        <Route exact path="/login">
          <Login onLogin={handleLogin} customer = { customers } />
        </Route>
        <Route path="/appointment">
          <AppointmentContainer appointments={appointments} />
        </Route>
        <Route path="/customer">
          <CustomerContainer customers={customers}  />
        </Route>
        <Route exact path="/">
          <Home />
        </Route>
      </Switch>
    </div>
  );
}

export default App;