ARG OS_VER=8
FROM centos:$OS_VER

ARG REBAR3_VER=3.14.4
ENV ERL_RPM_URL https://packages.erlang-solutions.com/erlang/rpm/centos/8/x86_64/esl-erlang_23.2-1~centos~8_amd64.rpm
ENV REBAR3_URL https://github.com/erlang/rebar3/releases/download/$REBAR3_VER/rebar3


RUN dnf install -y epel-release && \
    dnf update -y && \
    dnf install -y unixODBC libglvnd-glx mesa-libGLU wxGTK3 wxGTK3-gl && \
    dnf group install -y "Development Tools"

RUN echo $ERL_RPM_URL && curl -sSL $ERL_RPM_URL -o erlang.rpm && \
    rpm -i erlang.rpm && \
    rm erlang.rpm

RUN curl -sSL $REBAR3_URL -o /usr/local/bin/rebar3 && \
    chmod a+x /usr/local/bin/rebar3



CMD ["erl"]
