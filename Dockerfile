FROM python:3.7

WORKDIR /code

COPY requirements.txt /code
RUN pip install --disable-pip-version-check --no-cache-dir -r requirements.txt

COPY . /code

CMD ["python", "greeting.py"]
