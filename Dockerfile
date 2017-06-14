FROM virtru/base-cork-server:xenial

ONBUILD COPY cork-server-setup /cork-server-setup
ONBUILD RUN /cork-server-setup && rm /cork-server-setup
ONBUILD COPY cork /cork
