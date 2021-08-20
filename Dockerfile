# Pin to Python 3.8 because in 3.9: "array.array: tostring() and
# fromstring() methods have been removed" (from
# https://docs.python.org/3/whatsnew/3.9.html) and the Scapy 2.4.0
# code uses to tostring() method.
FROM python:3.8.10
RUN pip install scapy==2.4.0
CMD ["/usr/local/bin/scapy"]
