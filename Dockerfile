# Step 1: Specify the base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the current directory (containing the application) into the container
COPY . /app

# Step 4: Install dependencies (optional if you have a requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose the port your app will run on
EXPOSE 5000

# Step 6: Define the command to run your application
CMD ["python", "app.py"]

