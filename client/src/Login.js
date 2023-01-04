import { useState } from 'react';

function Login( { onLogin, customer } ) {

    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");

    function handleSubmit(e) {
      e.preventDefault();
      const user = { 
        username: username,
        password: password
      }
      fetch("/login", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify( user ),
      })
      .then((r) => {
        if (r.ok) {
          r.json().then((customer) => onLogin(customer));
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
              value={password}
              onChange={(e) => setPassword(e.target.value)}
            />
            <br />
        <button type="submit">Login</button>
    </form>
  </div>
);

}
export default Login;