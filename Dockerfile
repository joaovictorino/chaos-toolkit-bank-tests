FROM python:3.7-alpine

RUN apk add --no-cache --virtual build-deps gcc g++ linux-headers make \
        linux-headers musl-dev && \
    pip install --no-cache-dir -q -U pip && \
    pip install -U chaostoolkit && \
    pip install --no-cache-dir chaostoolkit-kubernetes && \
    rm -rf /tmp/* /root/.cache && \
    apk del build-deps

ENV KUBECONFIG=/tmp/my-config
ADD config /tmp/my-config

ENTRYPOINT ["chaos", "run", "/experiment/experiment.json"]