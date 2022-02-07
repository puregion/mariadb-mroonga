FROM mariadb:10.6.5

RUN apt update \
    && apt -y upgrade \
    && apt -y autoremove \
    && apt install -y mariadb-plugin-mroonga \
    && apt clean \
    && rm -rf /var/lib/apt/lists/* \
    && ln -s /usr/share/mysql/mroonga/install.sql /docker-entrypoint-initdb.d
