FROM busybox as helper
WORKDIR /workspace
RUN wget -O repo.zip https://github.com/datacharmer/test_db/archive/refs/heads/master.zip && \
    unzip repo.zip

FROM mysql:8.0
WORKDIR /docker-entrypoint-initdb.d
COPY --from=helper /workspace/test_db-master/employees.sql \
                   /workspace/test_db-master/load_departments.dump \
                   /workspace/test_db-master/load_employees.dump \
                   /workspace/test_db-master/load_dept_emp.dump \
                   /workspace/test_db-master/load_dept_manager.dump \
                   /workspace/test_db-master/load_titles.dump \
                   /workspace/test_db-master/load_salaries1.dump \
                   /workspace/test_db-master/load_salaries2.dump \
                   /workspace/test_db-master/load_salaries3.dump \
                   /workspace/test_db-master/show_elapsed.sql \
                   ./
