from docker.io/ubuntu:latest
RUN set -x \
	&& apt-get update && apt-get install -y apache2
COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/bash"]
EXPOSE 3306
