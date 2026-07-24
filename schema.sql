PRAGMA foreign_keys = ON;

-------------------------------------------------------
-- Customers
-------------------------------------------------------
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    phone TEXT,
    email TEXT,
    city TEXT,
    occupation TEXT,
    annual_income REAL,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

-------------------------------------------------------
-- Projects
-------------------------------------------------------
CREATE TABLE projects (
    project_id INTEGER PRIMARY KEY AUTOINCREMENT,
    project_name TEXT NOT NULL,
    city TEXT,
    location TEXT,
    status TEXT,
    launch_date TEXT
);

-------------------------------------------------------
-- Units
-------------------------------------------------------
CREATE TABLE units (
    unit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    project_id INTEGER,
    unit_number TEXT,
    unit_type TEXT,
    area_sqft INTEGER,
    price REAL,
    status TEXT,
    FOREIGN KEY(project_id)
        REFERENCES projects(project_id)
);

-------------------------------------------------------
-- Sales Executives
-------------------------------------------------------
CREATE TABLE sales_executives (
    executive_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    phone TEXT,
    email TEXT
);

-------------------------------------------------------
-- Leads
-------------------------------------------------------
CREATE TABLE leads (
    lead_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    project_id INTEGER,
    executive_id INTEGER,
    source TEXT,
    lead_status TEXT,
    enquiry_date TEXT,
    budget REAL,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(project_id) REFERENCES projects(project_id),
    FOREIGN KEY(executive_id) REFERENCES sales_executives(executive_id)
);

-------------------------------------------------------
-- Site Visits
-------------------------------------------------------
CREATE TABLE site_visits (
    visit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    lead_id INTEGER,
    visit_date TEXT,
    feedback TEXT,
    rating INTEGER,
    FOREIGN KEY(lead_id)
        REFERENCES leads(lead_id)
);

-------------------------------------------------------
-- Bookings
-------------------------------------------------------
CREATE TABLE bookings (
    booking_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    unit_id INTEGER,
    booking_date TEXT,
    booking_amount REAL,
    booking_status TEXT,
    FOREIGN KEY(customer_id)
        REFERENCES customers(customer_id),
    FOREIGN KEY(unit_id)
        REFERENCES units(unit_id)
);

-------------------------------------------------------
-- Payments
-------------------------------------------------------
CREATE TABLE payments (
    payment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    booking_id INTEGER,
    payment_date TEXT,
    amount REAL,
    payment_mode TEXT,
    FOREIGN KEY(booking_id)
        REFERENCES bookings(booking_id)
);

-------------------------------------------------------
-- Support Tickets
-------------------------------------------------------
CREATE TABLE support_tickets (
    ticket_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    booking_id INTEGER,
    issue_type TEXT,
    priority TEXT,
    status TEXT,
    created_date TEXT,
    resolved_date TEXT,
    FOREIGN KEY(customer_id)
        REFERENCES customers(customer_id),
    FOREIGN KEY(booking_id)
        REFERENCES bookings(booking_id)
);