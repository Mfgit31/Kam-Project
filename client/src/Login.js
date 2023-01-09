import { useState } from 'react';
import { useHistory } from'react-router-dom';
// import  Form  from './Form'

function Login( { onLogin, setCurrentCustomer } ) {

    // const [username, setUsername] = useState("");
    // const [passwords, setPasswords] = useState("");
    const [formData, setFormData] = useState({
        username: '',
        email: '',
        password: ''
    });
    console.log(formData)
    const [errors, setErrors] = useState([])
    const history = useHistory()
    const {username, email, password} = formData
    
    

    function handleSubmit(e) {
      
      const newCustomer = { 
        username: username,
        password: password
      }
      e.preventDefault();
      // Logs in user
      fetch("/login", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify( newCustomer ),
      })
      .then((r) => {
        if (r.ok) {
          // r.json().then((customer) => onLogin(customer));
          r.json().then(customerFromRails => {
            setCurrentCustomer(customerFromRails)
            history.push("/housing")
          })
        }else {
          r.json().then(json => setErrors(json.errors))
        }
      });
    }

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.id]: e.target.value,
    });
  }


  return (
    <div> 
      <form className='Login' onSubmit={handleSubmit}>
          <h2>Login</h2>
            <label htmlFor="username">Username: </label>
              <input
                type="text"
                id="username"
                value={username}
                onChange={ handleChange }
              />
              <br />
              <label htmlFor="password">Password: </label>
              <input
                type="text"
                id="password"
                value={password}
                onChange={handleChange}
              />
              <br />
              <button type="submit">Login</button>
              {/* <button type="submit">Logout</button> */}
              <br />
      </form>
    </div>
  );

}
export default Login;