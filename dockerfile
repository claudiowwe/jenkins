FROM python
RUN apt-get update
RUN apt-get upgrade -y
RUN pip install flask 
COPY index.html /home/app/templates/
COPY conect.py /home/app/
EXPOSE 8000
CMD python3 /home/app/conect.py
