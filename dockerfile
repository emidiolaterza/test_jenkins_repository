FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3.8
ADD test.py /home/test.py
CMD ["/home/hello.py"]
ENTRYPOINT ["python3"]
