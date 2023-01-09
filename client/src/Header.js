import {NavLink, Link} from "react-router-dom"


const Header = ( {onLogout, currentCustomer }) => {
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
                    activeStyle={{background: "#D8BFD8"}}>
                    Home
                </NavLink>
                <NavLink
                    to="/housing"
                    activeStyle={{background: "#D8BFD8"}}>
                    Housing
                </NavLink> 
                <NavLink
                    to="/appointment"
                    activeStyle={{background: "#D8BFD8"}}>
                    Appointment
                </NavLink> 
                <NavLink to="/signup" activeStyle={{ background: "#D8BFD8" }}>
                    Create Account
                </NavLink> 
            </div>
            {currentCustomer ? (
                <div>
                    <p>Welcome, {currentCustomer.username}!</p>
                    <button onClick={handleLogout}>Logout</button>
                    <NavLink
                    to="/updateCustomer"
                    activeStyle={{background: "#D8BFD8"}}>
                    My Account
                    </NavLink>
                </div>
            ) : (
                <Link to="/">Click Here to Login</Link>
            )}
        </div>
    )
}
export default Header


//  {/* <NavLink
// to="/customer"
// activeStyle={{background: "##D8BFD8"}}>
// Customer
// </NavLink>    */}