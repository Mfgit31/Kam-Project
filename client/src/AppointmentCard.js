function AppointmentCard({appointment}){
    return(
        <div>
            <h1>{appointment.housing_id}</h1>
            <h1>{appointment.customer_id}</h1>
            <h1>{appointment.date}</h1>
            <h1>{appointment.time}</h1>
        </div>
    )
}

export default AppointmentCard;


