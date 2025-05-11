# Sample Data for Airbnb Database

This SQL script populates the Airbnb-style database with realistic sample data across all core entities.

---

## 🗃️ Purpose

To provide initial data for:

- Development testing
- Demonstrations
- Mock queries
- UI prototyping

---

## 📦 Contents

This script includes:

- 4 Users (hosts and guests)
- 2 Properties (linked to host users)
- 2 Bookings (made by guest users)
- 1 Payment (linked to a booking)
- 2 Reviews (for properties by users)
- 2 Messages (between host and guest)

---

## ▶️ How to Use

Before running this script, ensure that the database schema has already been created using `schema.sql`.

### Step-by-Step:

1. Connect to your PostgreSQL database:
   ```bash
   psql -U your_username -d your_database
