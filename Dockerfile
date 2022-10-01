FROM python:3.8
RUN mkdir -p /opt/app
COPY app/ /opt/app/
WORKDIR /opt/app
RUN ls -la /opt/app
RUN pip install -r requirements.txt

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
