import AppointmentCard from "./AppointmentCard";


function AppointmentContainer({appointments}){
    return(
        <div>
            {appointments.map((appointment) => <AppointmentCard
            key={appointment.id} appointment={appointment}/>)}
            
        </div>
    )
}



export default AppointmentContainer;

