import './App.css';
import {useState, useEffect} from 'react';
import {Switch, Route} from 'react-router-dom';
import Header from './Header';
import HousingContainer from './HousingContainer';
import AppointmentContainer from './AppointmentContainer';
import Login from './Login';
import Home from './Home';
import UpdateCustomer from './UpdateCustomer';
import SignUp from './SignUp';

function App() {

  const [customers, setCustomers] = useState([])
  const [housings, setHousings] = useState([])
  const [appointments, setAppointments] = useState([])
  const [currentCustomer, setCurrentCustomer] = useState(null) 
  // console.log(currentCustomer)                      //(null)
  
  // const [CustomerArray, setNewCustomerArray] = useState([])

  // useEffect(() => {
  //     fetch('/customers')
  //     .then((r) => r.json())
  //     .then(setCurrentCustomer)
  // }, [])

  // function handleUpdateCustomer(updatedNewCustomer) {
  //   const updateCustomer = newCustomerArray.map((newCustomer) =>
  //   newCustomer.id === updatedNewCustomer.id ? updatedNewCustomer : newCustomer);
  //   setCustomer(updateCustomer);
  // }


  useEffect(() => {

    fetch("/appointments")
    
    .then(r => r.json())
    .then(data => setAppointments(data))
  }, [])

  
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
    fetch("/me").then((response) => {
      if (response.ok) {
        response.json().then((loggedInCustomer) => setCurrentCustomer(loggedInCustomer));
      }
    });
  }, []);


  function handleLogin(customers) {
    setCustomers(customers);
  }

  function handleLogout() {
    setCustomers();
  }

  return (
    <div className="App">
      <Header  currentCustomer={currentCustomer} onLogout={handleLogout}/>
      { !currentCustomer ? 
      <>
      <Login error={'Please login'} currentCustomer={currentCustomer} setCurrentCustomer={setCurrentCustomer} /> 
      <br/><br/>
      <SignUp error={'Please login'} currentCustomer={currentCustomer} setCurrentCustomer={setCurrentCustomer} />
      </>
      : 
      <Switch>
        <Route exact path="/updateCustomer">
          <UpdateCustomer currentCustomer={currentCustomer} />
        </Route>
        <Route path="/housing">
          <HousingContainer housings={housings} />
        </Route>
        <Route exact path="/signup">
          <SignUp setCurrentCustomer={setCurrentCustomer} />
        </Route>
        <Route path="/appointment">
          <AppointmentContainer appointments={appointments} />
        </Route>
        <Route exact path="/">
          <Home />
        </Route>
      </Switch>
      }
    </div>
  );
}
export default App;



  //  {/* <Route path="/customer">
  //           <CustomerContainer customers={customers}  />
  //         </Route> */}


  // const fetchHousings = () => {
  //   fetch("/housings")
  //   .then(r => {
  //     if(r.ok) {
  //       r.json().then(setHousings)
  //     }else {
  //       r.json().then(data => setErrors(data.error))
  //     }
  //   })
  // }
  // })


  // useEffect(() => {
  //   fetch("/authorized")
  //   .then(r => {
  //     if(r.ok) {
  //       r.json()
  //       .then(customer => {
  //       })
  //     }
  //   })
  // })
  

  // if (customers) {
  //   return <h2>Welcome, {customers.username}!</h2>
  // }else {
  //   return <Login onLogin={setCustomers}/>
  // }


  // if (customers) {
  //   return <h2>Welcome, {customers.username}!</h2>;
  // } else {
  //   return <Login onLogin={setCustomers} />;
  // }


  //new code
  // const deleteHousing = (id) => setHousings(current => current.filter(p => p.id !== id))
  // const updateCustomer = () => console.log('customer')
  // if(error) return <h1>{error}</h1>
  
  //new code 
  // const addHousing = (housing) => setHousings(current => [...current, housing])

  // const updateHousing = (updatedHousing) => setHousings(current => {
  //   return current.map(housing => {
  //     if(housing.id === updatedHousing.id){
  //       return updatedHousing
  //     }else {
  //       return housing
  //     }
  //   })
  // })

  // <Route exact path="/login">
  //         <Login onLogin={handleLogin} customer = { customers } />
  //       </Route>

  