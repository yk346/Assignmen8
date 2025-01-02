# **Module 8: Introduction to Web Applications and Testing**

## **Module Overview** 

Welcome to **Module 8**, where we take a significant step forward by introducing you to your **first web application** using Python. In this module, you will explore the **FastAPI Calculator** application, which serves as a foundation for understanding web applications, REST APIs, HTML, JavaScript, and automated testing with Pytest and Playwright. This hands-on experience will not only enhance your programming skills but also broaden your understanding of web systems development.

By the end of this module, you will have a solid grasp of how web applications function, how to develop and test them using modern frameworks and tools, and how to apply professional programming techniques to create robust and maintainable code.

---

## **Why Web Applications?**

Web applications are at the core of modern software development, enabling users to interact with applications through web browsers over the internet. Understanding how to build and test web applications is essential for any aspiring developer. This module introduces you to the fundamental concepts and technologies that power web applications, including:

- **REST APIs (Representational State Transfer Application Programming Interfaces):** Standards that allow different software applications to communicate over the internet.
- **FastAPI:** A modern, fast (high-performance) web framework for building APIs with Python.
- **HTML (HyperText Markup Language):** The standard markup language for creating web pages.
- **JavaScript:** A programming language that enables interactive web pages and is an essential part of web applications.
- **Playwright:** A Python library for automating and testing web applications through browser interactions.

By learning these technologies, you'll gain valuable skills that are highly relevant in today's software development landscape.

---

## **Learning Outcomes**

By the end of this module, you will be able to:

- CLO 10: Create, Consume and Test REST APIs using Python.

---

## **Learning Pathway**

### **Recall**

**Title:** Introduction to Web Applications and REST APIs  
**Grading Type:** Points  
**Instructions:**  

1. **Reflect on Previous Knowledge:**
   - Think about how applications you've used interact over the internet.
   - Consider what you know about client-server models and how data is exchanged.

2. **Participate in a Discussion:**
   - Share your thoughts on web applications:
     - What do you think a web application is?
     - Have you interacted with REST APIs before?
     - What role do you think Python plays in web development?

**Purpose:** This activity will help you connect your existing knowledge with new concepts, preparing you for the upcoming material on web applications and REST APIs.

---

### **Read**

1. **[Introduction to FastAPI - Comprehensive Reference](https://fastapi.tiangolo.com/tutorial/#run-the-code)**  
   *Purpose:* Learn the basics of FastAPI, a modern Python web framework for building APIs.

2. **[Understanding RESTful APIs](https://www.restapitutorial.com/)**  
   *Purpose:* Gain a foundational understanding of REST APIs, their principles, and how they facilitate communication between client and server.

3. **[HTML Basics](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/HTML_basics)**  
   *Purpose:* Learn the fundamentals of HTML, the standard language for creating web pages.

4. **[Introduction to JavaScript](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_is_JavaScript)**  
   *Purpose:* Understand what JavaScript is and how it adds interactivity to web pages.

5. **[Playwright for Python Documentation](https://playwright.dev/python/docs/intro)**  
   *Purpose:* Explore how Playwright automates browser interactions and is used for end-to-end testing.

6. **[Pytest Documentation](https://docs.pytest.org/en/latest/)**  
   *Purpose:* Learn how to write and run tests using Pytest, a powerful Python testing framework.

7. **[GitHub Actions Documentation](https://docs.github.com/en/actions)**  
   *Purpose:* Discover how to set up automated testing workflows using GitHub Actions.

---

### **Watch**

You are required to watch the instructional video provided on Canvas for this unit. The video covers:

- Introduction to web applications and their architecture.
- Overview of REST APIs and how they facilitate communication between clients and servers.
- Building a simple web application using FastAPI.
- Basics of HTML and JavaScript in the context of a web application.
- Writing and organizing unit and integration tests using Pytest.
- Introduction to Playwright for end-to-end testing.
- Setting up GitHub Actions for automating tests.
- Applying professional programming techniques and logging strategies.

---

## **Step-by-Step Guide: Building and Testing Your First Web Application**

This guide will walk you through developing the **FastAPI Calculator** web application, implementing tests, and setting up continuous integration using GitHub Actions. By the end of this guide, you will have hands-on experience with web development and testing practices.

---

### **Step 1: Understanding Web Applications and REST APIs**

#### **1.1 What is a Web Application?**

A web application is a software program that runs on a web server and can be accessed through a web browser over the internet. It typically consists of:

- **Frontend:** The user interface built with HTML, CSS, and JavaScript that runs in the user's browser.
- **Backend:** The server-side application that processes requests, performs computations, and interacts with databases.

#### **1.2 What are REST APIs?**

REST (Representational State Transfer) APIs are a set of principles that define how web services communicate over HTTP. They allow clients (like web browsers or other applications) to interact with the server by sending requests and receiving responses, typically in JSON format.

**Key Concepts:**

- **HTTP Methods:** Standard methods like GET, POST, PUT, DELETE used to perform actions.
- **Endpoints:** URLs that represent resources or actions.
- **Statelessness:** Each request from a client contains all the information needed to process it.

#### **1.3 Introduction to FastAPI**

**FastAPI** is a modern, fast (high-performance) web framework for building APIs with Python 3.6+ based on standard Python type hints.

**Features:**

- **High Performance:** On par with NodeJS and Go.
- **Easy to Use:** Designed to be easy to use and learn.
- **Automatic Documentation:** Provides interactive API documentation.

---

### **Step 2: Exploring the FastAPI Calculator Application**

#### **2.1 Application Structure**

- **`app/operations.py`:** Contains arithmetic functions (`add`, `subtract`, `multiply`, `divide`).
- **`main.py`:** Defines the FastAPI application, including API endpoints and serving the HTML page.
- **`templates/index.html`:** The HTML frontend that interacts with the API.


#### **2.2 Understanding HTML and JavaScript in the Application**

- **HTML (`index.html`):** Structures the web page with input fields and buttons for calculator operations.
- **JavaScript:** Handles events like button clicks, retrieves input values, sends requests to the API, and updates the page with results.

**Key Points:**

- The frontend sends data to the backend API using JavaScript's `fetch` method.
- Responses from the API are processed and displayed to the user.

---

### **Step 3: Setting Up the Development Environment**

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-username/fastapi-calculator.git
   ```
2. **Navigate to the Project Directory:**
   ```bash
   cd fastapi-calculator
   ```
3. **Create a Virtual Environment:**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows use `venv\Scripts\activate`
   ```
4. **Install Dependencies:**
   ```bash
   pip install -r requirements.txt
5. Install Playwright and set up browsers:
    ```bash
    pip install playwright
    playwright install
   ```
6. **Run the Application:**
   ```bash
   uvicorn main:app --reload
   ```
7. **Access the Application:**
   - Open a web browser and navigate to `http://localhost:8000`.

8.  Stop the application with CTRL + C
9.  Run the application with docker 
10. Run the tests from within the container as per the video.

---

### **Step 4: Writing and Organizing Tests**

#### **4.1 Unit Tests with Pytest**

- **Purpose:** Test individual functions in `operations.py` to ensure they work correctly.
- **Location:** `tests/unit/test_operations.py`
- **Example:**

  ```python
  import pytest
  from app.operations import add, subtract, multiply, divide

  def test_add():
      assert add(2, 3) == 5

  def test_divide_by_zero():
      with pytest.raises(ValueError):
          divide(10, 0)
  ```

#### **4.2 Integration Tests with Pytest**

- **Purpose:** Test the API endpoints to ensure they integrate properly with the backend logic.
- **Location:** `tests/integration/test_api.py`
- **Example:**

  ```python
  from fastapi.testclient import TestClient
  from main import app

  client = TestClient(app)

  def test_add_endpoint():
      response = client.post("/add", json={"a": 2, "b": 3})
      assert response.status_code == 200
      assert response.json() == {"result": 5}
  ```

#### **4.3 End-to-End Tests with Playwright**

- **Purpose:** Simulate user interactions with the web application and test the application flow.
- **Location:** `tests/e2e/test_e2e.py`
- **Setup:**

  - Install Playwright and set up browsers:
    ```bash
    pip install playwright
    playwright install
    ```

- **Example:**

  ```python
  import pytest
  from playwright.sync_api import sync_playwright

  def test_calculator_addition():
      with sync_playwright() as p:
          browser = p.chromium.launch()
          page = browser.new_page()
          page.goto("http://localhost:8000")
          page.fill("#a", "2")
          page.fill("#b", "3")
          page.click("button#add")
          result = page.inner_text("#result")
          assert result == "Result: 5"
          browser.close()
  ```

---

### **Step 5: Implementing Logging**

1. **Configure Logging in `main.py`:**

   ```python
   import logging

   logging.basicConfig(level=logging.INFO)
   logger = logging.getLogger(__name__)
   ```

2. **Add Logging Statements:**

   ```python
   @app.post("/add")
   async def add_numbers(numbers: Numbers):
       logger.info(f"Adding {numbers.a} and {numbers.b}")
       result = add(numbers.a, numbers.b)
       return {"result": result}
   ```

3. **Verify Logs:**
   - Run the application and observe logs in the console to ensure they provide useful information.

---

### **Step 6: Utilizing Git for Version Control**

1. **Initialize Git Repository:**

   ```bash
   git init
   ```

2. **Create a `.gitignore` File:**
   - Include common patterns to exclude, such as virtual environment directories and compiled files.

3. **Commit Changes Regularly:**

   ```bash
   git add .
   git commit -m "Initial commit with application code and tests"
   ```

4. **Push to GitHub:**

   ```bash
   git remote add origin https://github.com/your-username/fastapi-calculator.git
   git push -u origin main
   ```

---

### **Step 7: Setting Up Continuous Integration with GitHub Actions**

1. **Create Workflow File:**

   - Path: `.github/workflows/ci.yml`

2. **Workflow Configuration:**

   ```yaml
   name: CI

   on: [push, pull_request]

   jobs:
     build:
       runs-on: ubuntu-latest

       steps:
       - uses: actions/checkout@v2

       - name: Set up Python
         uses: actions/setup-python@v2
         with:
           python-version: '3.9'

       - name: Install dependencies
         run: |
           pip install -r requirements.txt
           pip install pytest playwright
           playwright install

       - name: Run Unit Tests
         run: pytest tests/unit/

       - name: Run Integration Tests
         run: pytest tests/integration/

       - name: Run End-to-End Tests
         run: pytest tests/e2e/
   ```

3. **Commit and Push Workflow File:**

   ```bash
   git add .github/workflows/ci.yml
   git commit -m "Add CI workflow for automated testing"
   git push
   ```

4. **Verify Workflow Execution:**
   - Check the **Actions** tab on your GitHub repository to see the workflow run.

---

## **Hands-On Assignment**

**Title:** Build and Test Your First Web Application with FastAPI  
**Grading Type:** Points  

**Assignment Instructions:**  

1. **Set Up the Project:**
   - Use the provided code for the **FastAPI Calculator** application.
   - Ensure all dependencies are installed and the application runs locally.

2. **Implement Tests:**
   - **Unit Tests:** Write unit tests for all functions in `operations.py`.
   - **Integration Tests:** Write tests for all API endpoints in `main.py`.
   - **End-to-End Tests:** Write tests using Playwright to simulate user interactions.

3. **Enhance Logging:**
   - Implement logging throughout the application to track operations and errors.

4. **Utilize Git for Version Control:**
   - Commit changes regularly with descriptive messages.
   - Use branches if working on different features or tests.

5. **Set Up Continuous Integration:**
   - Configure GitHub Actions to run your tests automatically on each push.

6. **Submit:**
   - **GitHub Repository Link:** Provide the link to your repository containing the application code and tests.
   - **Screenshots:**
     - Successful GitHub Actions workflow run.
     - Application running in the browser.
# **Grading Expectations**

Your submissions for the **Hands-On Assignment** will be evaluated based on the following two criteria:

### **1. Submission Completeness (50 Points)**

- **GitHub Repository Link:**
  - Provided and accessible.
  - Contains all necessary files (`FastAPI` application code, tests, `requirements.txt`, GitHub Actions workflow).

- **Screenshots:**
  - **GitHub Actions Workflow:** Screenshot shows a successful run of the GitHub Actions workflow.
  - **Application Running in Browser:** Screenshot shows the web application operational.


### **2. Functionality of Web Application and Tests (50 Points)**

- **Web Application Operates Correctly:**
  - The FastAPI Calculator runs without errors.
  - All arithmetic operations function as expected.

- **Tests Implemented and Passing:**
  - Unit tests, integration tests, and end-to-end tests are implemented.
  - All tests pass successfully in the GitHub Actions workflow.

---

**Total: 100 Points**
---

## **Reflect**

**Title:** Module 8 Reflection  
**Grading Type:** Points  
**Instructions:**  

Compose a reflection (600-700 words) on your experience building and testing your first web application. Address the following points:

1. **Understanding Web Applications:**
   - Discuss how developing the FastAPI Calculator expanded your understanding of web applications and REST APIs.

2. **Challenges and Solutions:**
   - Identify challenges you faced, such as understanding FastAPI, HTML, JavaScript, or testing with Playwright.
   - Explain how you overcame these challenges.

3. **Testing Practices:**
   - Reflect on how writing different types of tests contributes to software reliability.
   - Discuss the importance of automated testing in development workflows.

4. **Version Control with Git:**
   - Explain how using Git supported your development process.
   - Reflect on the benefits of committing changes regularly.

5. **Continuous Integration:**
   - Discuss how setting up GitHub Actions improved your workflow.
   - Consider how automated testing ensures code quality.

6. **Professional Programming Techniques:**
   - Reflect on applying DRY, LBYL, and EAFP principles.
   - Discuss how logging enhanced your ability to debug and monitor the application.

7. **Future Applications:**
   - Consider how the skills learned can be applied to more complex projects.
   - Reflect on areas where you seek to improve or learn more.

---

## **Quiz**

**Title:** Introduction to Web Applications and Testing Quiz  
**Grading Type:** Points  

**Instructions:**

1. **Complete the Quiz:** Access the quiz on Canvas, which tests your understanding of web applications, REST APIs, and testing concepts.

2. **Quiz Content:** The quiz will cover:

   - Fundamental concepts of web applications and REST APIs.
   - Basics of FastAPI and how to define API endpoints.
   - Understanding HTML and JavaScript roles in web applications.
   - Writing and executing tests with Pytest.
   - Basics of Playwright for end-to-end testing.
   - Utilizing Git and GitHub Actions for version control and CI.

**Question Types:**

- **Multiple-Choice:** Test your knowledge of key concepts and terminologies.
- **Short Answer:** Explain specific functionalities or code snippets.
- **Code Analysis:** Review code examples and identify errors or improvements.

---

## **Supplementary Materials**

To support your learning, refer to the following resources:

- **[FastAPI Documentation](https://fastapi.tiangolo.com/)**  
  *Comprehensive guide on building APIs with FastAPI.*

- **[MDN Web Docs: HTML](https://developer.mozilla.org/en-US/docs/Web/HTML)**  
  *Detailed documentation on HTML elements and usage.*

- **[MDN Web Docs: JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript)**  
  *Resources to learn and understand JavaScript.*

- **[Pytest Documentation](https://docs.pytest.org/en/latest/)**  
  *Guide to writing and running tests with Pytest.*

- **[Playwright Documentation](https://playwright.dev/python/docs/intro)**  
  *Instructions on using Playwright for browser automation and testing.*

- **[GitHub Actions Documentation](https://docs.github.com/en/actions)**  
  *Tutorials on setting up workflows for continuous integration.*

---

## **Tips for Success**

- **Start Early:** Begin setting up your environment and exploring the code as soon as possible.
- **Understand the Basics:** Ensure you grasp fundamental concepts before diving into coding.
- **Ask Questions:** If you're unsure about something, don't hesitate to reach out to instructors or peers.
- **Practice Testing:** Writing tests not only validates your code but also reinforces your understanding.
- **Utilize Resources:** Refer to the supplementary materials to deepen your knowledge.
- **Reflect on Learning:** Take time to think about how each part of the module contributes to your overall understanding.

---

## **Submission Deadline**

Please ensure that your GitHub repository link and reflection are submitted by **[Insert Deadline Here]**. Late submissions may be subject to grade penalties as per the course policy.

---

**Good luck with your assignment!** Embrace this opportunity to build and test your first web application, and enjoy the journey of expanding your programming horizons.
