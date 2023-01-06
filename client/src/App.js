import './App.css';
import {useState, useEffect} from 'react';
import {Switch, Route, Router} from 'react-router-dom';
import Header from './Header';
// import CustomerContainer from './CustomerContainer';
import HousingContainer from './HousingContainer';
import AppointmentContainer from './AppointmentContainer';
import Login from './Login';
import Home from './Home';
import SignUp from './SignUp';
import Navbar from './Navbar';
import {useHistory} from 'react-router-dom';


// import Form from './Form';

function App() {
  
  let history = useHistory();
  
  const [customers, setCustomers] = useState([])
  const [housings, setHousings] = useState([])
  const [appointments, setAppointments] = useState([])
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [currentCustomer, setCurrentCustomer] = useState(null)
  

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


  useEffect(() => {
  fetch("/customers")
  .then( r => r.json())
  .then(data => setCustomers(data))
  }, [])

  useEffect(() => {
    fetch("/housings")
    .then(r => r.json())
    .then(data => {
      console.log(data)
      setHousings(data)})
    }, [])

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


  useEffect(() => {

  fetch("/appointments")
  
  .then(r => r.json())
  .then(data => setAppointments(data))
  }, [])

  // useEffect(() => {
  //   fetch("/me").then((res) => {
  //     if (res.ok) {
  //       res.json.then((customer) =>{
  //         setCurrentCustomer(customer);
  //         setIsAuthenticated(true);
  //       })
  //     }
  //   })
  // }, []);

  // if (!isAuthenticated) {
  //   return <div></div>;
  // }
  
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

 

  const handleLogout = () => {
    fetch(`/logout`, {
      method: "DELETE",
    }).then((r) => {
      if (r.ok) {
        setCurrentCustomer(null);
        history("/login");
      }
    });
  };
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

  return (
    <div className="App">
      {/* <Router>{false ? <Login /> : <Logout />}</Router> */}

      <Header customers={customers} onLogout={handleLogout} />
      {/* !customer ? <Login error={'Please login'} updateCustomer={updateCustomer} /> */}
      <Switch>
        <Route path="/housing">
          <HousingContainer housings={housings} />
        </Route>
        <Route exact path="/login">
          <Login
            onLogin={handleLogin}
            customer={customers}
            setCurrentCustomer={setCurrentCustomer}
          />
        </Route>
        <Route exact path="/signup">
          <SignUp setCurrentCustomer={setCurrentCustomer} />
        </Route>
        <Route path="/appointment">
          <AppointmentContainer appointments={appointments} />
        </Route>
        {/* <Route path="/customer">
          <CustomerContainer customers={customers}  />
        </Route> */}
        <Route exact path="/">
          <Home />
        </Route>
      </Switch>
    </div>
  );

}

export default App;

