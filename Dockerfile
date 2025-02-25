# Use Python 3.11 as the base image
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the project folder to the container
COPY . .

# Install required dependencies
RUN pip install numpy pandas scikit-learn wandb

# Define the command to run your script
CMD ["python", "distance_classification.py"]

