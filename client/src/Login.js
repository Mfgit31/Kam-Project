import { useState } from 'react';
import { useHistory } from'react-router-dom';
import  form  from './Form'

function Login( { onLogin, customer } ) {

    const [username, setUsername] = useState("");
    const [passwords, setPasswords] = useState("");
    const [formData, setFormData] = useState({
        name: '',
        email: '',
        password: ''
    });
    const [errors, setErrors] = useState([])
    const history = useHistory()
    const {name, password} = formData

    function handleSubmit(e) {
      e.preventDefault();
      const user = { 
        username: username,
        password: passwords
      }

      // Logs in user
      fetch("/login", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify( user ),
      })
      .then((r) => {
        if (r.ok) {
          // r.json().then((customer) => onLogin(customer));
          r.json().then(customer => {
            history.push(`/customers/${customer.id}`)
          })
        }else {
          r.json().then(json => setErrors(json.errors))
        }
      });
    }

    // function handleClick() {

    // }

return (
  <div> 
    <form onSubmit={handleSubmit}>
        <h3>Login</h3>
          <label htmlFor="username">Username: </label>
            <input
              type="text"
              id="username"
              value={username}
              onChange={(e) => setUsername(e.target.value)}
            />
            <br />
            <label htmlFor="password">Password: </label>
            <input
              type="text"
              id="password"
              value={passwords}
              onChange={(e) => setPasswords(e.target.value)}
            />
            <br />
        <button type="submit">Login</button>
    </form>
  </div>
);

}
export default Login;