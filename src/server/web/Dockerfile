FROM python:3.4.9-alpine3.8

WORKDIR /opt/cassh
COPY . web/
 
RUN apk add --no-cache --virtual .build_deps build-base python3-dev libffi-dev openssl-dev \
	&& pip install --no-cache-dir -r /opt/cassh/web/requirements.txt \
	&& apk del .build_deps

CMD [ "python", "/opt/cassh/web/cassh_web.py" ]