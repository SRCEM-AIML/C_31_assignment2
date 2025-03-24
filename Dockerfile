# Use official Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install django

# Expose the port
EXPOSE 8000

# Start the Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
