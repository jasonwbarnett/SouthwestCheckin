FROM python:3.7
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV REQUESTS_CA_BUNDLE=/usr/src/app/mitmproxy-ca-cert.pem

ENTRYPOINT ["./entrypoint.sh"]
