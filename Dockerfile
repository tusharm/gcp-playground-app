FROM python:3.7-slim

WORKDIR /work
COPY src/ .
COPY requirements.txt .

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["/work/app.py"]