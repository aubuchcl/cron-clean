FROM alpine:latest

RUN echo "0 0 * * 1-5 /script.sh" > /etc/crontabs/root && \
    echo "0 8,12,16,20 * * 1-5 /script.sh" >> /etc/crontabs/root && \
    echo "*/30 * * * 1-5 /ping.sh" >> /etc/crontabs/root && \

CMD ["crond", "-f"]
