ARG python_version="3.7.4-alpine3.10"
FROM python:${python_version}

RUN \
   pip install -U pip \
&& pip install pipenv

WORKDIR /zappa
ADD ./Pipfile /zappa/Pipfile
ADD ./Pipfile.lock /zappa/Pipfile.lock

RUN pipenv install --system
ENTRYPOINT ["pipenv", "run", "zappa"]
