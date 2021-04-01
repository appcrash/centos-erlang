ARG OS_VER=8
FROM centos:$OS_VER

ARG RPM_URL=https://github.com/rabbitmq/erlang-rpm/releases/download/v23.3/erlang-23.3-2.el
ARG REBAR3_VER=3.14.4
ARG OS_VER=8

ENV OS_VER $OS_VER
ENV ERL_RPM_URL ${RPM_URL}${OS_VER}.x86_64.rpm
ENV REBAR3_URL https://github.com/erlang/rebar3/releases/download/$REBAR3_VER/rebar3


RUN dnf group install -y "Development Tools"
RUN echo $ERL_RPM_URL && curl -sSL $ERL_RPM_URL -o erlang.rpm && \
    rpm -i erlang.rpm && \
    rm erlang.rpm

RUN curl -sSL $REBAR3_URL -o /usr/local/bin/rebar3 && \
    chmod a+x /usr/local/bin/rebar3



CMD ["erl"]
