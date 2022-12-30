function CustomerCard({customer}){
    return(
        <div>
            <h1>{customer.name}</h1>
            <h1>{customer.address}</h1>
            <h1>{customer.email}</h1>
            <h1>{customer.phone}</h1>
            <h1>{customer.age}</h1>
            {/* <h1>{customer.password_digest}</h1>
            <h1>{customer.username}</h1> */}
        </div>
    )
}



export default CustomerCard;

