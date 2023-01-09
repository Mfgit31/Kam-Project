import { useHistory } from'react-router-dom';
import { useState } from 'react'

function UpdateCustomer({customer, currentCustomer}) {
    // const {id, name, address, email, phone, age, username, password} = customer


    
    
    
    // Update customer
    // const changeCustomer = (customerId, newCustomer) => {
        
    //     useEffect(() => {
    //         fetch("/customers", {
    //             method: "PATCH",
    //             headers: {'content-type': 'application/json'},
    //             body: JSON.stringify({
    //                 customer: newCustomer,
    //             })
    //     })
    //     .then(r => r.json())
    //     .then(newCustomer => setCustomers([...customers, newCustomer]))
    // })
    
    
    // Delete a customer account
    // const deleteCustomer = (customerId) => {
    //     fetch("/customers", `${customerId}`, {method: "DELETE"})
    
    //         const updatedCustomers = customers.filter(customer => customer.id !== customerId)
    //         setCustomers(updatedCustomers)
    //     }
    
    const history = useHistory()
    

    const handleDeleteAccount = (customerId) => {
        fetch(`/customers/${customerId}`, {method: "DELETE"})
        history.push("/")
    }



    const [showForm, setShowForm] = useState(false)
    const [newUserName, setNewUserName] = useState('')
    console.log(newUserName)
    
    const toggleForm = () => {
        setShowForm(!showForm)

    }
    const handleEdittedAccount = (customerId) => {
        fetch(`/customers${customerId}`, 
            {method: "PATCH",
            headers: {'content-type': 'application/json'},
            body: JSON.stringify({
                username: ':p'})
            }
        )
        history.push("/")

    }
    
    
    
    return(
        <div>
            <h1>'Hi this is your account'</h1>
            <button onClick={ (e) => handleDeleteAccount(`${currentCustomer.id}`) } >Delete my Account </button>
            <br/><br/>
            <button onClick={toggleForm}>Change my Username :p</button>
            <br/><br/>
            {
                showForm ?
                <>
                    <form onSubmit={handleEdittedAccount}>
                        <label htmlFor="name">Name:</label>
                        <input
                            id="name-signup-input"
                            type="text"
                            name="name"
                            value={newUserName}
                            onChange={(e) => setNewUserName(e.target.value)}
                        />
                        <button onClick={handleEdittedAccount} type="submit">Edit</button>

                    </form> 
                </>
                :
                null
            }
            
        </div>    
    )  
}

export default UpdateCustomer;