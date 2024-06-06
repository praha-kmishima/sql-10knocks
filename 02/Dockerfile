FROM mysql:8.0

USER root

# busyboxイメージを使って、必要なツールをコピー
COPY --from=busybox:1.31.1-uclibc /bin/busybox /bin/busybox

# busyboxを使ってunzipをシンボリックリンクで使用可能にする
RUN ln -s /bin/busybox /bin/unzip

WORKDIR /app

RUN curl -L -o repo.zip https://github.com/datacharmer/test_db/archive/refs/heads/master.zip && \
    busybox unzip repo.zip && \
    rm repo.zip
