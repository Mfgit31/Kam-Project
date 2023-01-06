 import { useState } from 'react';
// import { useHistory } from'react-router-dom';
// import  form  from './Form'

// function Login( { onLogin, customer } ) {

//     const [username, setUsername] = useState("");
//     const [passwords, setPasswords] = useState("");
//     const [formData, setFormData] = useState({
//         username: '',
//         email: '',
//         password: ''
//     });
//     const [errors, setErrors] = useState([])
//     const history = useHistory()
//     const {name, password} = formData



//     function handleSubmit(e) {
//       e.preventDefault();
//       const user = { 
//         username: username,
//         password: passwords
//       }

//       // Logs in user
//       fetch("/login", {
//         method: "POST",
//         headers: {
//           "Content-Type": "application/json",
//         },
//         body: JSON.stringify( user ),
//       })
//       .then((r) => {
//         if (r.ok) {
//           // r.json().then((customer) => onLogin(customer));
//           r.json().then(customer => {
//             history.push(`/customers/${customer.id}`)
//           })
//         }else {
//           r.json().then(json => setErrors(json.errors))
//         }
//       });
//     }

// return (
//   <div>
//     <form onSubmit={handleSubmit}>
//       <h3>Login</h3>
//       <label htmlFor="username">Username: </label>
//       <input
//         type="text"
//         id="username"
//         value={username}
//         onChange={(e) => setUsername(e.target.value)}
//       />
//       <br />
//       <label htmlFor="password">Password: </label>
//       <input
//         type="password"
//         id="password"
//         value={passwords}
//         onChange={(e) => setPasswords(e.target.value)}
//       />
//       <br />
//       <button type="submit">Login</button>
//     </form>
//   </div>
// );


const Login = ({setCurrentCustomer}) => {
  const [formData, setFormData] = useState({
    username: "",
    password: "",
  });

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    });
  }
  const handleSubmit = (event) => {
    event.preventDefault();
    fetch("/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(formData),
    }).then((res) => {
      if (res.ok) {
        res.json().then((customer) => {
          setCurrentCustomer(customer);
        });
      }else{
        res.json().then((errors) => {
          console.error(errors);
      });
     }
   });
  };

  
  return (
    <form onSubmit={handleSubmit}>
      <label htmlFor="username">Username</label>
      <input
        id="username-input"
        type="text"
        name="username"
        value={formData.username}
        onChange={handleChange}
      />
      <label htmlFor="password">Password</label>
      <input
        id="password-input"
        type="password"
        name="password"
        value={formData.password}
        onChange={handleChange}
      />

      <button type="submit">Login</button>
    </form>
  );
}

export default Login