FROM python:2-stretch
COPY reqs.txt /reqs.txt
RUN pip install numpy
RUN pip install -r reqs.txt
RUN wget http://pypi.python.org/packages/source/Q/QSTK/QSTK-0.2.8.tar.gz && tar -xzvf QSTK-0.2.8.tar.gz
WORKDIR QSTK-0.2.8
RUN sh UbuntuInstallation.sh && python setup.py install
WORKDIR Examples
CMD ["python", "Validation.py"]
