# MegaSoft Project Overview

## Initializing the Database

- The database structure is modeled in the `init_db.sql` file.
- This file creates tables `worker`, `client`, `project`, and `project_worker`.

## Populating the Database

- Data for the tables is populated in the `populate_db.sql` file.
- At least 10 workers, 5 clients, and 10 projects are added with worker assignments.

## Database Queries

1. Finding the worker with the highest salary - in `find_max_salary_worker.sql`.
2. Finding the client with the most projects - in `find_max_projects_client.sql`.
3. Finding the project with the longest duration - in `find_longest_project.sql`.
4. Finding the youngest and oldest workers - in `find_youngest_eldest_workers.sql`.
5. Printing the cost of each project - in `print_project_prices.sql`.
