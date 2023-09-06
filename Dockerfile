FROM ubuntu
#RUN apt-get update
#RUN apt-get -y upgrade
RUN apt-get update && apt-get -f install && apt-get install -y python3 python3-pip
#RUN apt-get install -y python3 python3-pip
#RUN pip install -r requirements.txt
RUN mkdir /opt/app

WORKDIR /opt/app

COPY . .

RUN pip3 install -r requirements.txt

#CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "5000"]

CMD ["streamlit" ,"run", "Streamlit_App.py"]