# Airbnb-style Database Schema

This project contains the SQL schema for an Airbnb-style application. It includes the following tables:

- `User`
- `Property`
- `Booking`
- `Payment`
- `Review`
- `Message`

## Features

- UUIDs for all primary keys.
- Proper use of foreign keys with cascading deletes.
- Enum-like constraints on roles, statuses, and payment methods.
- Indexes on searchable and foreign key fields.

## How to Use

1. Clone the repository.
2. Navigate to `database-script-0x01`.
3. Run the SQL file in your PostgreSQL or compatible RDBMS:

```bash
psql -U your_user -d your_database -f schema.sql
