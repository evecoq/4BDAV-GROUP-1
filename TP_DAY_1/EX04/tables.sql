-- Table Room category
CREATE TABLE hotel.room_category (
    id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    bed_count NUMBER NOT NULL,
    comfort_level VARCHAR NOT NULL,
    PRIMARY KEY(id)
);

-- Table Room
CREATE TABLE hotel.room (
    id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    hotel_id NUMBER NOT NULL,
    category_id NUMBER NOT NULL,
    room_number VARCHAR NOT NULL,
    room_name VARCHAR,
    PRIMARY KEY(id),
    FOREIGN KEY(hotel_id) REFERENCES hotel.hotels(id),
    FOREIGN KEY(category_id) REFERENCES hotel.room_category(id)
);

-- Table Clients
CREATE TABLE hotel.clients (
    id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    signup_date DATE NOT NULL,
    email VARCHAR NOT NULL,
    phone_number VARCHAR NOT NULL,
    PRIMARY KEY(id)
);

-- Table Reservations
CREATE TABLE hotel.reservations (
    id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    client_id NUMBER NOT NULL,
    date DATE NOT NULL,
    status VARCHAR NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(client_id) REFERENCES hotel.clients(id)
);

-- Table Room_reservations
CREATE TABLE hotel.room_reservations (
    id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    reservation_id NUMBER NOT NULL,
    room_id NUMBER NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(reservation_id) REFERENCES hotel.reservations(id),
    FOREIGN KEY(room_id) REFERENCES hotel.room(id)
);