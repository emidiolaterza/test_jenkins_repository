FROM python:3.9 
# Or any preferred Python version.
ADD test.py .
CMD 'python3' './test.py' 


