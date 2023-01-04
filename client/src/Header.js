import {NavLink, Link} from "react-router-dom"


const Header = ( {onLogout, customer }) => {
    function handleLogout() {
        fetch("/logout", {
          method: "DELETE",
        }).then(() => onLogout());
    }

    return (
        <div className="header">
            <h1>KAM</h1>
            <br/>
            <div className="navbar">
                <NavLink
                    exact to="/"
                    activeStyle={{background: "#CCCCFF"}}>
                    Home
                </NavLink>
                <NavLink
                    to="/housing"
                    activeStyle={{background: "#CCCCFF"}}>
                    Housing
                </NavLink> 
                <NavLink
                    to="/appointment"
                    activeStyle={{background: "#CCCCFF"}}>
                    Appointment
                </NavLink>  
                <NavLink
                    to="/customer"
                    activeStyle={{background: "#CCCCFF"}}>
                    Customer
                </NavLink>   
            </div>
            {customer ? (
                <div>
                    <p>Welcome, {customer.username}!</p>
                    <button onClick={handleLogout}>Logout</button>
                </div>
            ) : (
                <Link to="/login">Click Here to Login</Link>
                )}
        </div>
    )
}

export default Header