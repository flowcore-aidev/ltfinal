# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the backend code
COPY backend/ ./backend/
COPY frontend/ ./frontend/
COPY public/ ./public/

# Expose the port
EXPOSE 8000

# Start the app
CMD ["python", "backend/app.py"]
