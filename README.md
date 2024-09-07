# Country Transportation Database

## Introduction
The **Country Transportation Database** project aims to develop a comprehensive database model for recording various transportation alternatives within a country. This includes macro and micro-level data for sea, air, road, mobile transportation, metro, and more. The system is designed to provide unique cards for each citizen, allowing for the recording of transportation histories, searches, and preferences. The system supports both macro and micro-level queries.

## Project Overview
The project is a detailed analysis and design endeavor, focusing on creating a robust database model that integrates data from multiple transportation websites. The main components of the project include:

1. **Data Requirements**: Analysis of data requirements from various transportation websites.
2. **EER Diagrams**: Conceptual design using Enhanced Entity-Relationship (EER) diagrams.
3. **Combined EER Model**: Integration of individual EER diagrams into a unified model.
4. **Logical Model**: Conversion of EER diagrams into a relational model.
5. **Database Implementation**: Implementation of the relational model in PostgreSQL.

## Analysis
Data requirements were gathered from the following transportation websites:
- [Turkish Airlines](https://www.turkishairlines.com/)
- [TCDD Taşımacılık](https://www.tcddtasimacilik.gov.tr/seferler/yuksek-hizli-tren?date=2022-09-18)
- [Martı Tech](https://www.marti.tech/)
- [Obilet](https://www.obilet.com/)
- [IDO](https://www.ido.com.tr/)
- [İZBAN](https://www.izban.com.tr/Sayfalar/Anasayfa.aspx)
- [Yolcu360](https://yolcu360.com/)

## Design

### Conceptual Design
- **EER Diagrams**: Separate Enhanced Entity-Relationship diagrams were created based on the data requirements from each website. These diagrams outline the entities, relationships, and attributes relevant to each transportation platform.

### Combined EER Model
- **Integrated EER Diagram**: A unified EER diagram was developed by combining the individual diagrams. This model integrates data from various transportation sites to create a comprehensive database schema.

### Logical Model
- **Relational Model Mapping**: The combined EER diagram was converted into a relational model using the methodology detailed in [this guide](https://tinman.cs.gsu.edu/~raj/4710/sp03/ch9-part1.pdf). This step involved defining tables, primary keys, foreign keys, and relationships to ensure data integrity and efficiency.

## Database Implementation
- **PostgreSQL**: The relational model was implemented in PostgreSQL. The provided SQL scripts include table creation, data insertion, and schema definitions required to set up the database.

## Project Files
- **data_requirements**: Contains the data requirements extracted from the specified websites.
- **eerd-models**: Includes the separate EER diagrams for each website.
- **combined-eerd-model**: Contains the integrated EER diagram combining all individual models.
- **eerd-to-relational-mapping**: Provides the relational schema derived from the combined EER model.
- **database.sql**: SQL scripts for creating and populating the database in PostgreSQL.

## Usage
To access the implemented database:
1. Set up PostgreSQL on your machine.
2. Run the `database.sql` script to create the database schema and insert initial data.
3. Use SQL queries to interact with the database and perform various operations.

## Conclusion
The **Country Transportation Database** project provides a robust and integrated database system for managing transportation data. It combines data from multiple sources into a unified schema, offering a comprehensive solution for transportation management and analysis.

