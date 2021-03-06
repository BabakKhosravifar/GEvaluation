FROM python:3.7
RUN pip install virtualenv
ENV VIRTUAL_ENV=/venv
RUN virtualenv venv -p python3
ENV PATH="VIRTUAL_ENV/bin:$PATH"
WORKDIR /app
ADD . /app
# Install dependencies
RUN pip install -r req.txt
# Expose port 
ENV PORT 8080
# Run the application:
CMD ["python", "main.py", "--f Quarterly-Engage-UA-Revenue.xlsx --g Arcade --s Board --p ios --v 0.3,68.59,2.0554,0.08,99986 --k 3"]
