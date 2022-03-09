FROM python:3.9-bullseye

ENV PYTHONUNBUFFERED 1

WORKDIR app
COPY echo.py echo.py

EXPOSE 8080

CMD python echo.py -b 0.0.0.0 -p 8080