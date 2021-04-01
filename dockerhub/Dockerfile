ARG OS_VER=7
FROM centos:$OS_VER


ARG REBAR3_VER=3.14.4
ENV ERL_RPM_URL https://packages.erlang-solutions.com/erlang/rpm/centos/7/x86_64/esl-erlang_23.2-1~centos~7_amd64.rpm
ENV REBAR3_URL https://github.com/erlang/rebar3/releases/download/$REBAR3_VER/rebar3


RUN yum update -y && \
    yum group install -y "Development Tools" && \
    yum install -y unixODBC

RUN curl -sSL $ERL_RPM_URL -o erlang.rpm && \
    rpm -i erlang.rpm && \
    rm erlang.rpm

RUN curl -sSL $REBAR3_URL -o /usr/local/bin/rebar3 && \
    chmod a+x /usr/local/bin/rebar3



CMD ["erl"]
