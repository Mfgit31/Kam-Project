import './App.css';
import {useState, useEffect} from 'react'
// import {Switch, Route, NavLink} from 'react-router-dom'
// import Header from './Header';
import CustomerContainer from './CustomerContainer';
import HousingContainer from './HousingContainer';
// import Home from './components/Home'

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
  


  return (
    <div className="App">
      {/* <Header />
      <Switch>
        <Route path="/housing">
          <HousingContainer housings={housings} onAdd={onAdd} />
        </Route>
        <Route path="/appointment">
          <Appointments/>
        </Route>
        <Route path="/customer">
          <CustomerContainer customers={customers} onAdd={onAdd} />
        </Route>
        <Route exact path="/">
          <Home />
        </Route>
      </Switch> */}


      <CustomerContainer customers={customers}/>
      <HousingContainer housings={housings}/>

      
    </div>
  );
}

export default App;
