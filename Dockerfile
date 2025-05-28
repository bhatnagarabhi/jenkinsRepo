FROM openjdk-corretto
ENV PYTHONUNBUFFERED=1
RUN sudo apk add && sudo apk update
CMD ["echo", "hello"]
