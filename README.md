# SQL to NoSQL Migration using DLoader

## Overview

This project implements a data migration pipeline from a relational database (MySQL) to a NoSQL database (MongoDB) using a DLoader-inspired ETL architecture.

It includes a **dual-database benchmarking system** to compare performance, consistency, and storage behavior between SQL and NoSQL systems.

---

## Tech Stack

- MySQL (source database)
- MongoDB (target database)
- Node.js (migration scripts)
- ETL pipeline (Extract, Transform, Load)
- Benchmarking scripts

---

## Project Structure

```/project-root
│
├── sql/ # SQL schema and seed data
├── mongodb/ # NoSQL structure output
├── scripts/ # ETL migration scripts
├── benchmark/ # performance comparison tools
├── docs/ # documentation (checkpoint report)
└── README.md
```

---

## Architecture

The system follows a 3-layer ETL architecture:

1. **Extract** → data retrieved from MySQL
2. **Transform** → relational model converted to document model
3. **Load** → insertion into MongoDB

Additionally, a **validation layer** compares both databases.

---

## Migration Pipeline

1. Initialize MySQL database
2. Populate relational schema
3. Run ETL script (DLoader-inspired)
4. Transform tables into JSON documents
5. Load into MongoDB
6. Run validation queries
7. Execute performance benchmarks

---

## Dual Database Strategy

This project maintains two synchronized systems:

- MySQL → source of truth
- MongoDB → optimized NoSQL representation

Both databases are queried to compare:

- response time
- data consistency
- storage efficiency

---

## Key Features

- Relational → Document transformation
- Automated ETL pipeline
- Batch processing migration
- Data validation layer
- SQL vs NoSQL benchmarking

---

## Benchmark Metrics

The system evaluates:

- Query execution time
- Storage size comparison
- Read vs write performance
- Data consistency accuracy

---

## Modern Context (2026)

This project reflects modern database engineering trends:

- incremental migration strategies
- cloud-native ETL pipelines
- AI-assisted schema mapping
- event-driven architectures

---

## How to Run

### 1. Install dependencies
```bash
npm install
```
### 2. Start MySQL
mysql -u root -p < sql/schema.sql

### 3. Run migration
node scripts/migrate.js

### 4. Run benchmark
node benchmark/run-tests.js

## Conclusion

This project demonstrates that migrating from SQL to NoSQL is not a simple data transfer process but a full architectural redesign involving transformation, validation, and performance trade-offs.
