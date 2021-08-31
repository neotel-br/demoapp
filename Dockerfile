FROM  python:3.9.6-bullseye
RUN mkdir -p /opt/app/demoapp

COPY requirements.txt /opt/app/
COPY ./ /opt/app/demoapp
WORKDIR /opt/app/
RUN pip install -r requirements.txt 
WORKDIR  /opt/app/demoapp
ENV VIRTUAL_ENV /env
ENV PATH /env/bin:$PATH


EXPOSE 8000
CMD [ "python3",  "manage.py", "runserver" ,"0.0.0.0:8000" ]

#CMD ["gunicorn", "--bind", ":8000", "--workers", "3", "neotelapp.wsgi:application"]
