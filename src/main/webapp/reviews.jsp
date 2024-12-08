<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Review Form</title>
    <style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }

    h1, h2 {
        text-align: center;
        color: #333;
    }

    #reviewForm {
        max-width: 600px;
        margin: 20px auto;
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    #formContainer label {
        font-size: 1rem;
        color: #555;
    }

    #formContainer input {
        width: 100%;
        padding: 10px;
        margin: 5px 0 15px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    button[type="submit"] {
        background-color: #28a745;
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 1rem;
        cursor: pointer;
        border-radius: 4px;
    }

    button[type="submit"]:hover {
        background-color: #218838;
    }

    #reviews {
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    #reviews div {
        margin-bottom: 10px;
        padding: 10px;
        border-bottom: 1px solid #eee;
    }

    #reviews div:last-child {
        border-bottom: none;
    }

    p {
        margin: 0;
        font-size: 0.9rem;
        color: #555;
    }

    strong {
        color: #333;
    }
</style>
    	
    <script>
        const questions = [
        	"UserName",
            "How was your experience?",
            "What did you like the most?",
            "What can be improved?",
            "Would you recommend us?",
            "Any additional comments?"
        ];

        async function submitForm(event) {
            event.preventDefault();

            const answers = [];
            questions.forEach((question, index) => {
                const answer = document.getElementById(`answer${index}`).value;
                answers.push({ question, answer });
            });

            const response = await fetch("http://localhost:8080/api/reviews/add", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(answers),
            });
            if (response.ok) {
                alert("Review submitted successfully!");
                document.getElementById("reviewForm").reset();
                loadReviews();
            } else {
                alert("Failed to submit review.");
            }
        }

        async function loadReviews() {
            const response = await fetch("http://localhost:8080/api/reviews/all");
            const reviews = await response.json();
            const reviewSection = document.getElementById("reviews");
            reviewSection.innerHTML = "";

            reviews.forEach((review) => {
                const reviewElement = document.createElement("div");
                reviewElement.innerHTML = `<p><strong>${review.question}</strong>: ${review.answer}</p>`;
                reviewSection.appendChild(reviewElement);
            });
        }

        window.onload = function () {
            const formContainer = document.getElementById("formContainer");

            questions.forEach((question, index) => {
                const questionLabel = document.createElement("label");
                questionLabel.innerText = question;
                questionLabel.htmlFor = `answer${index}`;

                const answerInput = document.createElement("input");
                answerInput.type = "text";
                answerInput.id = `answer${index}`;
                answerInput.name = `answer${index}`;
                answerInput.required = true;

                formContainer.appendChild(questionLabel);
                formContainer.appendChild(document.createElement("br"));
                formContainer.appendChild(answerInput);
                formContainer.appendChild(document.createElement("br"));
                formContainer.appendChild(document.createElement("br"));
            });

            loadReviews();
        };
    </script>
</head>
<body>
    <h1>Review Form</h1>
    <form id="reviewForm" onsubmit="submitForm(event)">
        <div id="formContainer"></div>
        <button type="submit">Submit</button>
    </form>

    <h2>Review Section</h2>
    <div id="reviews"></div>
</body>
</html>
