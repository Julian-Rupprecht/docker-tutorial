
FROM python:3.9


WORKDIR /code


COPY ./requirements.txt ./


RUN pip install --no-cache-dir --upgrade -r requirements.txt


COPY ./src ./src


CMD ["fastapi", "run", "src/main.py", "--port", "80", "--reload"]