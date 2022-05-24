FROM python:3.9-slim

LABEL "com.github.actions.name"="Python Pytest Docker action"


RUN pip install --upgrade pip

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]