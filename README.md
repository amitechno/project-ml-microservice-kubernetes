[![CircleCI](https://circleci.com/gh/amitechno/project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/amitechno/project-ml-microservice-kubernetes)

# Machine Learning Microservice API Project

## Project Summary

This project operationalizes a Machine Learning Microservice API that predicts housing prices in Boston based on various features. It utilizes a pre-trained scikit-learn model and deploys it as a Flask-based microservice. The API allows users to make predictions by sending HTTP requests.

## How to Run

### 1. Clone the Repository

```bash
git clone https://github.com/amitechno/project-ml-microservice-kubernetes.git
cd project-ml-microservice-kubernetes
```

### 2. Linting and Code Quality Check

Before running the application, you should perform linting and code quality checks:

```bash
# Install linting tools (if not already installed)
pip install pylint

# Run linting on the Python scripts
pylint app.py
```

### 3. Build Docker Image

Build the Docker image of the application using the provided Dockerfile:

```bash
docker build -t ml-microservice-app .
```

### 4. Deploy Using Docker

Deploy the containerized application using Docker:

```bash
docker run -p 8080:80 ml-microservice-app
```

### 5. Logging Improvement

If necessary, you can enhance the log statements in the source code for better monitoring and debugging.

### 6. Kubernetes Configuration

Configure Kubernetes and create a Kubernetes cluster. Detailed instructions may be provided in the `kubernetes/` directory.

### 7. Deployment Using Kubernetes

Deploy the Docker container within the Kubernetes cluster using the provided configuration files. Detailed instructions may be provided in the `kubernetes/` directory.

### 8. Continuous Integration

The project is set up with CircleCI for continuous integration. The configuration files for CircleCI can be found in the `.circleci/` directory.

## File Explanation

- `app.py`: The Python Flask application serving predictions through API calls.
- `Dockerfile`: Configuration file for building a Docker image of the application.
- `requirements.txt`: List of Python dependencies required to run the application.
- `.circleci/`: Configuration files for CircleCI to enable continuous integration.
- `make_prediction.sh`: File to get prdeiction by queryinh ml-app api.

## API Documentation

For detailed API documentation and information on how to make predictions, refer to the project's documentation.

## Acknowledgments

- Kaggle (https://www.kaggle.com/): Source of the housing price prediction dataset.
- Docker (https://www.docker.com/): Used for containerization.
- Kubernetes (https://kubernetes.io/): Used for container orchestration.
- CircleCI (https://circleci.com/): Used for continuous integration and testing.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
