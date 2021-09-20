FROM java-base-j8:latest
ENV TEMP_DIR /temp_dir
RUN mkdir temp_dir
RUN chmod -R 777 temp_dir
COPY run.sh /temp_dir
ENTRYPOINT ${TEMP_DIR}/run.sh
