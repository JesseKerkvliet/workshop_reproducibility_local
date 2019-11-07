FROM python:3

ENV message hello

WORKDIR /usr/src/app

COPY . .

RUN pip install -r requirements.txt

RUN python setup.py build &&\
    python setup.py install

CMD [ "python", "./your-daemon-or-script.py"]
