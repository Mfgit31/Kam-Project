import CustomerCard from "./CustomerCard";


function CustomerContainer({customers}){
    return(
        <div>
            {customers.map((customer) => <CustomerCard
            key={customer.id} customer={customer}/>)}
            
        </div>
    )
}



export default CustomerContainer;