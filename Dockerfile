FROM python:3.11

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt
RUN playwright install --with-deps chromium
RUN apt update && apt install -y \
    libx11-xcb1 \
    libxrandr2 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxi6 \
    libxfixes3 \
    libgtk-3-0t64 \
    libatk1.0-0t64 \
    libasound2t64 \
    libdbus-1-3
  RUN playwright install

CMD ["python", "main.py"]
