# 📘 CHECKPOINT FINAL (ENGLISH – ACADEMIC STYLE)

## 1. Introduction to Data Migration

Data migration is the process of transferring structured data from a source system (typically SQL-based) to a target system (often NoSQL) while preserving meaning, integrity, and usability.

In modern systems, migration is driven by:
- scalability limitations of relational databases
- increasing semi-structured data volumes
- distributed system requirements

## SQL vs NoSQL

SQL databases provide:
- structured schema
- ACID guarantees
- relational modeling with joins

NoSQL databases provide:
- flexible schema design
- horizontal scalability
- high throughput for distributed workloads

The migration process is therefore not a simple transfer but a re-architecture of data representation.

## 2. Overview of DLoader (Academic Interpretation)

DLoader is a research-based ETL migration approach designed to transfer data from MySQL to NoSQL systems such as MongoDB and Cassandra.

It introduces a structured pipeline:
- Extraction from relational sources
- Staging in distributed storage (HDFS)
- Transformation into NoSQL-compatible structures
- Loading into target databases

The methodology is particularly focused on:
- large-scale datasets
- distributed processing
- performance benchmarking

## 3. Migration Process using DLoader

The migration process is structured into six phases:
- Source analysis (schema + relationships)
- Data extraction from SQL
- Staging in distributed storage (HDFS)
- Schema mapping (relational → document/column model)
- Transformation (denormalization + type conversion)
- Loading into NoSQL database
- Validation and benchmarking

Modern migration strategies (2025–2026) increasingly favor:
- incremental migration (Strangler pattern)
- shadow writes for safety
- event-driven synchronization

## 4. Data Transformation Strategy

DLoader transforms relational data into document-oriented structures.

Key transformations:
- JOIN operations → embedded documents
- normalized tables → denormalized JSON documents
- foreign keys → references or nested objects
- SQL types → BSON-compatible types

Example:

SQL:
users
orders

NoSQL:
{
  "user": "...",
  "orders": [ ... ]
}

This transformation is driven by query optimization rather than schema preservation.

## 5. Performance Considerations

Performance depends on:
- data volume
- batch size
- network transfer cost
- indexing strategy in NoSQL
- workload type (read-heavy vs write-heavy)

DLoader improves performance by:
- using distributed staging (HDFS)
- batch processing instead of row-by-row migration
- enabling benchmarking during migration

## 6. Consistency and Integrity

Data consistency is ensured through:
- intermediate staging layer (HDFS)
- validation checkpoints
- row/document count comparison
- checksum verification
- sampling-based audits

However, NoSQL systems do not enforce relational integrity, so consistency must be handled at:
- application level
- or via data modeling strategy

## 7. Practical Application (Your Improvement)

Dual-database validation approach:

We design a system with:
- SQL database (source of truth)
- NoSQL database (target system)

Migration workflow:
- Extract data from SQL
- Transform using DLoader-like pipeline
- Load into NoSQL
- Run parallel queries on both systems
- Compare results, latency, and storage efficiency

## 8. Modern Industry Context (2025–2026)

Recent trends in database migration include:
- AI-assisted schema mapping and transformation
- event-driven ETL pipelines using cloud services
- incremental migration instead of full migration
- stronger focus on observability and validation

## 9. Conclusion

Migrating from SQL to NoSQL is a structural redesign of data architecture.

Advantages:
- scalability
- flexibility
- performance in distributed systems

Limitations:
- loss of relational integrity
- higher complexity in modeling
- need for application-level consistency

DLoader provides a structured ETL methodology, extended in modern systems with:
- incremental migration
- validation pipelines
- AI-assisted transformation
- performance benchmarking
