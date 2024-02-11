FROM python:3.11.1

WORKDIR /app

RUN git clone https://github.com/haondt/Gabbro-Bot .
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "bot.py"]
