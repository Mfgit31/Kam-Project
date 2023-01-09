import HousingCard from "./HousingCard";


function HousingContainer({housings}){
    return(
        <div className="container">
            {housings.map((housing) => <HousingCard
            key={housing.id} housing={housing}/>)}
            
        </div>
    )
}



export default HousingContainer;