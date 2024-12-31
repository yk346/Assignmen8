FROM python:3.10-slim as builder

ENV PYTHONDONTWRITEBYTECODE=1 \
   PYTHONUNBUFFERED=1 \
   PIP_NO_CACHE_DIR=1 \
   DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
   apt-get upgrade -y && \
   apt-get install -y --no-install-recommends \
       gcc \
       python3-dev \
       libssl-dev \
   && rm -rf /var/lib/apt/lists/*

RUN python -m pip install --upgrade pip setuptools>=70.0.0 wheel

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt && \
   pip install --no-cache-dir safety && \
   safety check

FROM python:3.10-slim

RUN groupadd -r appgroup && \
   useradd -r -g appgroup appuser

COPY --from=builder /usr/local/bin /usr/local/bin
COPY --from=builder /usr/local/lib/python3.10/site-packages /usr/local/lib/python3.10/site-packages

WORKDIR /app
COPY . .
RUN chown -R appuser:appgroup /app

USER appuser

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
   CMD curl -f http://localhost:8000/health || exit 1

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--workers", "4", "--limit-max-requests", "3000"]