FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y

ENV MSSQL_SA_PASSWORD=1v@nG123

EXPOSE 1433

ARG shared_workspace=/opt/workspace


ENV SHARED_WORKSPACE=${shared_workspace}

# -- Runtime

VOLUME ${shared_workspace}



CMD ["/opt/mssql/bin/sqlservr"]