function HousingCard({housing}){
    return(
        <div>
            <h1>{housing.address}</h1>
            <img src={housing.image} alt="Housing"/>
            <h1>{housing.overview}</h1>
            <h1>{housing.price}</h1>
        </div>
    )
}



export default HousingCard;

