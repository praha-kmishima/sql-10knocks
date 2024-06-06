FROM busybox as helper
WORKDIR /workspace
RUN curl -L -o repo.zip https://github.com/datacharmer/test_db/archive/refs/heads/master.zip
RUN unzip repo.zip

FROM mysql:8.0
COPY --from=helper /workspace/repo /docker-entrypoint-initdb.d
