import {NavLink, Link} from "react-router-dom"


const Header = ( {onLogout, customer }) => {
    function handleLogout() {
        fetch("/logout", {
        method: "DELETE",
        }).then(() => onLogout());
    }
    
    // const handleLogout = () => {
    //     fetch("/logout", {
    //     method: "DELETE",
    //     })
    //     .then(r => {
    //         if(r.ok){
    //             updateCustomer(null)
    //         }
    //     })
    // } 

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
                {/* <NavLink
                    to="/customer"
                    activeStyle={{background: "##D8BFD8"}}>
                    Customer
                </NavLink>    */}
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