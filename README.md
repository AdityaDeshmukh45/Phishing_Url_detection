---

# Phishing Detection Using Machine Learning

## Project Overview

Phishing is a cyberattack where malicious actors attempt to steal sensitive information (like passwords or credit card details) by disguising themselves as trustworthy entities through fake websites. This project aims to develop a **phishing detection system** using machine learning algorithms to classify URLs as *safe*, *suspicious*, or *phishing*. The system extracts features from a URL, processes them through a machine learning model, and predicts the legitimacy of the website.

## Project Idea

The project implements a website where users can input a URL to check if it is safe or phishing. The system uses various features of the URL, such as length, domain name, HTTPS usage, and redirection behavior, to detect phishing attempts. This information is processed by a trained machine learning model to predict the nature of the website.

## Methodology

The project is broken down into several components:
1. **Feature Extraction**: The system extracts 30 features from the input URL, including the presence of an IP address, length of the URL, usage of shortened URLs, redirection, and domain registration length.
2. **Model Training**: Multiple machine learning algorithms are trained on a labeled dataset that contains information about phishing and non-phishing websites.
3. **Prediction and Deployment**: The model with the highest accuracy is saved and used to predict whether an input URL is phishing or not. The prediction is displayed to the user on a web interface built using Flask.

## Features Extracted

The system extracts the following key features from the URL:
- **Using IP in the URL**: Checks if the URL uses an IP address instead of a domain name.
- **Length of the URL**: Measures the length of the URL to detect potential phishing attempts.
- **Presence of URL Shorteners**: Identifies whether the URL uses popular shortening services (e.g., bit.ly, goo.gl).
- **HTTPS Usage**: Checks if the URL uses HTTPS.
- **Domain Registration Length**: Extracts the domain registration length using a WHOIS lookup.
- **Redirection Behavior**: Detects redirection within the URL.
- And many more features related to the structure of the URL and the website’s metadata.

## Machine Learning Models

The following machine learning models were trained and evaluated to find the best-performing model:
1. **Logistic Regression**
2. **Decision Tree Classifier**
3. **Random Forest Classifier**
4. **Support Vector Machine (SVM)**

After training the models, the one with the highest accuracy was selected for deployment in the web application.

### Accuracy Comparison

| Model                   | Accuracy |
|--------------------------|----------|
| Logistic Regression       | 92.73%    |
| Decision Tree Classifier  | 96.08%    |
| Random Forest Classifier  | 96.71%    |

The **Random Forest Classifier** provided the highest accuracy and was chosen for the final implementation.

## File Structure

- `app.py`: The main Flask application file that runs the website.
- `features.py`: The file containing feature extraction logic, which extracts relevant data from the URL.
- `train_model.py`: The script used to train the machine learning models and save the best-performing model.
- `templates/index.html`: The front-end HTML file for the web application.
- `pickle/model.pkl`: The trained machine learning model (Random Forest Classifier) saved for future predictions.

## How It Works

1. **Input a URL**: Users input a URL on the front-end of the website.
2. **Feature Extraction**: The system extracts 30 different features from the URL.
3. **Prediction**: The extracted features are processed by the trained Random Forest model, which predicts whether the URL is phishing, suspicious, or safe.
4. **Result Display**: The result (Safe, Suspicious, or Phishing) is displayed to the user on the same page.

## How to Run the Project

1. Clone the repository to your local machine.
2. Install the necessary dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Train the model by running `train_model.py`. This will generate a file named `model.pkl` containing the trained Random Forest model.
   ```bash
   python train_model.py
   ```
4. Run the Flask application:
   ```bash
   python app.py
   ```
5. Open your web browser and go to `http://127.0.0.1:5000/`.
6. Enter a URL and check whether it's phishing or safe.

## Technologies Used

- **Python**: Programming language used for model training and feature extraction. 
- **Flask**: Lightweight web framework for building the web application.
- **Scikit-learn**: Machine learning library for training and evaluating models.
- **BeautifulSoup, Requests, WHOIS**: Libraries used for feature extraction.
- **HTML/CSS**: Front-end of the web application.

## Screenshots
![WhatsApp Image 2024-10-04 at 01 16 46_fc5caf48](https://github.com/user-attachments/assets/721e409a-b28b-4da5-b069-88eccbcad590)
![WhatsApp Image 2024-10-04 at 01 18 28_f9622841](https://github.com/user-attachments/assets/7595c939-9a83-43bd-b8ff-71d51c29fbcb)


## Conclusion

This project demonstrates how machine learning models can be effectively applied to detect phishing websites using URL-based features. By automating the detection process, this system provides a fast, reliable way to identify malicious websites and protect users from phishing attacks.

--- 

