FROM debian
WORKDIR /app
COPY ./bash.sh /PROYECTO_BASH/bash.sh
ARG opcion
SHELL ["/bin/bash","-c"]
RUN chmod +x /PROYECTO_BASH/bash.sh
ENTRYPOINT [ "/PROYECTO_BASH/bash.sh" ]
CMD ["$opcion"]
