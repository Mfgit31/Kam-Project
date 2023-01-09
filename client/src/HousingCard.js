import Modal from "@material-ui/core/Modal";
import { useState } from "react";
// import Button from "@material-ui/core/Button";

const HousingCard = ({ housing }) => {
    const [showModal, setShowModal] = useState(false);

    return (
    
    <div className="card">
        <img
        src={housing.image}
        alt="Housing"
        onClick={() => setShowModal(true)}
        />
        <Modal open={showModal} onClose={() => setShowModal(false)}>
        <div>
            <div className="Modal">
            <div className="Modal-details">
                <h1>{housing.address}</h1>
                <p>{housing.overview}</p>
                <h4>{housing.price}</h4>
            </div>
            <img src={housing.image} alt="Housing" /> 
            </div>
        </div>
        </Modal>
    </div>
    );
};

export default HousingCard;


