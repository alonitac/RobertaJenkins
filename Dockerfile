FROM python:3.10.12-slim-bullseye
WORKDIR /app
# RUN apt update && apt install git -y
# RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash && apt-get install git-lfs
# RUN git clone https://huggingface.co/SamLowe/roberta-base-go_emotions

RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY roberta .

CMD ["python3", "app.py"]
