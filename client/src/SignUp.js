import React from 'react'
import { useState } from 'react';

 const SignUp = ({setCurrentCustomer}) => {
    const [formData, setFormData] = useState({
        name: "",
        username: "",
        password: "",
        email: "",
        address: "",
        phone: "",
        age: ""
    });

    const handleChange = (e) => {
        setFormData({
            ...formData,
            [e.target.name]: e.target.value,
        });
    };

    function handleSubmit(e) {
        e.preventDefault();

        const newCustomerInfo = {...formData};

        fetch("/customers", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(newCustomerInfo),
          }).then((res) => {
            if (res.ok) {
              res.json().then((customer) => {
                setCurrentCustomer(customer);
                });
            }else {
                res.json().then((errors) => {
                    console.error(errors);
                });
            }
        });
    }
    return (
      <form onSubmit={handleSubmit}>
        <label htmlFor="name">Name:</label>
        <input
          id="name-signup-input"
          type="text"
          name="name"
          value={formData.name}
          onChange={handleChange}
        />

        <label htmlFor="username">Username:</label>
        <input
          id="username-signup-input"
          type="text"
          name="username"
          value={formData.username}
          onChange={handleChange}
        />
        <label htmlFor="password">Password:</label>
        <input
          id="password-signup-input"
          type="text"
          name="password"
          value={formData.password}
          onChange={handleChange}
        />

        <label htmlFor="email">Email:</label>
        <input
          id="email-signup-input"
          type="text"
          name="email"
          value={formData.email}
          onChange={handleChange}
        />
        <label htmlFor="address">Address:</label>
        <input
          id="address-signup-input"
          type="text"
          name="address"
          value={formData.address}
          onChange={handleChange}
        />
        <label htmlFor="phone">Phone:</label>
        <input
          id="phone-signup-input"
          type="text"
          name="phone"
          value={formData.phone}
          onChange={handleChange}
        />
        <label htmlFor="age">Age:</label>
        <input
          id="age-signup-input"
          type="text"
          name="age"
          value={formData.age}
          onChange={handleChange}
        />

        <button type="submit">Submit</button>
      </form>
    );
    }

export default SignUp;
            
            
          



  














