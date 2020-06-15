FROM python:3.9-rc-alpine

RUN pip3 install retry requests

COPY public_ip_monitor.py /public_ip_monitor.py

ENTRYPOINT [ "python3", "/public_ip_monitor.py" ]