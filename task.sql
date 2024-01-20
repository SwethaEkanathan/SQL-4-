-- Creat tables
CREATE TABLE car (
    id integer NOT NULL,
    serial_number character varying(50) NOT NULL,
    salesperson_id integer,
    customer_id integer
);


CREATE TABLE car_part_used (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    quantity integer NOT NULL
);



CREATE TABLE customer (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


CREATE TABLE invoice (
    id integer NOT NULL,
    sales_person_id integer,
    car_id integer,
    customer_id integer,
    amount numeric(10,2) NOT NULL,
    date date NOT NULL
);


CREATE TABLE mechanic (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


CREATE TABLE salesperson (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);



CREATE TABLE service_history (
    id integer NOT NULL,
    car_part_used_id integer,
    customer_id integer,
    car_serial_number character varying(50),
    description text
);


CREATE TABLE service_ticket (
    id integer NOT NULL,
    car_serial_number character varying(50),
    customer_id integer
);

-- Insert statements
-- Insert statements for car table
INSERT INTO car (id, serial_number, salesperson_id, customer_id)
VALUES
    (1, 'ABC123', 101, 201),
    (2, 'XYZ789', 102, 202),
    (3, '123XYZ', 103, 203);

-- Insert statements for car_part_used table
INSERT INTO car_part_used (id, name, quantity)
VALUES
    (1, 'Engine Oil', 2),
    (2, 'Brake Pads', 4),
    (3, 'Air Filter', 1);

-- Insert statements for customer table
INSERT INTO customer (id, name)
VALUES
    (201, 'John Doe'),
    (202, 'Jane Smith'),
    (203, 'Bob Johnson');

-- Insert statements for invoice table
INSERT INTO invoice (id, sales_person_id, car_id, customer_id, amount, date)
VALUES
    (1, 101, 1, 201, 5000.00, '2023-01-15'),
    (2, 102, 2, 202, 6000.00, '2023-02-20'),
    (3, 103, 3, 203, 4500.00, '2023-03-25');

-- Insert statements for mechanic table
INSERT INTO mechanic (id, name)
VALUES
    (101, 'Mike Johnson'),
    (102, 'Sara Adams'),
    (103, 'Chris Smith');

-- Insert statements for salesperson table
INSERT INTO salesperson (id, name)
VALUES
    (101, 'Tom Brown'),
    (102, 'Emily Davis'),
    (103, 'Jack Wilson');

-- Insert statements for service_history table
INSERT INTO service_history (id, car_part_used_id, customer_id, car_serial_number, description)
VALUES
    (1, 1, 201, 'ABC123', 'Regular maintenance'),
    (2, 2, 202, 'XYZ789', 'Brake replacement'),
    (3, 3, 203, '123XYZ', 'Air filter change');

-- Insert statements for service_ticket table
INSERT INTO service_ticket (id, car_serial_number, customer_id)
VALUES
    (1, 'ABC123', 201),
    (2, 'XYZ789', 202),
    (3, '123XYZ', 203);
