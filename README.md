# Railway Reservation System

## Overview

The Railway Reservation System is a web-based application designed to facilitate the easy booking and management of train reservations. This system allows users to search for available trains, book tickets, and manage their reservations seamlessly.

## Features

- **User Authentication:** Secure login and registration for users.
- **Search and Book:** Effortlessly search for available trains and book tickets online.
- **Reservation Management:** View and manage your reservations easily.
- **Admin Panel:** Admin dashboard for managing trains, users, and reservations.

## Technologies Used

- **Frontend:**
  - HTML
  - CSS
  - JavaScript
  - Bootstrap

- **Backend:**
  - Node.js
  - Express.js
  - MySQL

- **Database:**
  - MySQL
  - MySQL Workbench



## Database Schema

### Users Table

- user_id (Primary Key)
- username
- password
- email

### Trains Table

- train_id (Primary Key)
- train_name
- source
- destination
- departure_time
- arrival_time

### Reservations Table

- reservation_id (Primary Key)
- user_id (Foreign Key)
- train_id (Foreign Key)
- seat_number
- status

## MySQL Workbench

The project uses MySQL for data storage. Below are the steps to set up the database using MySQL Workbench:

1. Open MySQL Workbench.
2. Create a new schema named `railway_reservation`.
3. Execute the SQL script located in `db/railway_reservation.sql` to create tables and define relationships.

## How to Run

1. Clone the repository: `git clone https://github.com/your-username/railway-reservation-system.git`
2. Install dependencies: `npm install`
3. Start the server: `npm start`

## Usage

- Access the web page through `http://localhost:3000`.
- Register or log in to book and manage train reservations.
- Admins can log in to access the admin panel.

## Contributing

Contributions are welcome! Feel free to open issues or pull requests.

## License

This project is licensed under the [MIT License](LICENSE).
