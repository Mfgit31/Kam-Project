import {NavLink} from "react-router-dom"


const Header = () => {
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
        </div>
    )
}

export default Header