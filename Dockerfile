FROM virtru/base-cork-server:xenial

ONBUILD COPY cork-server-setup /cork-server-setup

# Runs the cork setup if and only if the cork-server-setup file exists
ONBUILD RUN /cork-server-setup && rm -f /cork-server-setup

ONBUILD COPY cork /cork
