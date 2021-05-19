<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
</head>
<body>
    <!-- Add two inputs for "phoneNumber" and "code" -->
    <input type="tel" id="phoneNumber" />
    <input type="text" id="code" />

    <!-- Add two buttons to submit the inputs -->
    <button id="sign-in-button" onclick="submitPhoneNumberAuth()">
        SIGN IN WITH PHONE
    </button>
    <button id="confirm-code" onclick="submitPhoneNumberAuthCode()">
        ENTER CODE
    </button>

    <!-- Add a container for reCaptcha -->
    <div id="recaptcha-container"></div>

    <!-- Add the latest firebase dependecies from CDN -->
    <script src="https://www.gstatic.com/firebasejs/8.5.0/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.5.0/firebase-auth.js"></script>

    <script>
      // Paste the config your copied earlier
        var firebaseConfig = {
            apiKey: "AIzaSyBvtR3G6enIhqBX4t4mQKMdAx-8u3T9WkI",
            authDomain: "phone-authentication-708d7.firebaseapp.com",
            projectId: "phone-authentication-708d7",
            storageBucket: "phone-authentication-708d7.appspot.com",
            messagingSenderId: "99758381006",
            appId: "1:99758381006:web:d6e245150cc02e3de53d9f",
            measurementId: "G-L6SFE7N1Q7"
        };
        // Initialize Firebase
        firebase.initializeApp(firebaseConfig);
       

      // Create a Recaptcha verifier instance globally
      // Calls submitPhoneNumberAuth() when the captcha is verified
      window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier(
        "recaptcha-container",
        {
          size: "normal",
          callback: function(response) {
            submitPhoneNumberAuth();
          }
        }
      );

      // This function runs when the 'sign-in-button' is clicked
      // Takes the value from the 'phoneNumber' input and sends SMS to that phone number
      function submitPhoneNumberAuth() {
        var phoneNumber = document.getElementById("phoneNumber").value;
        var appVerifier = window.recaptchaVerifier;
        firebase
          .auth()
          .signInWithPhoneNumber(phoneNumber, appVerifier)
          .then(function(confirmationResult) {
            window.confirmationResult = confirmationResult;
          })
          .catch(function(error) {
            console.log(error);
          });
      }

      // This function runs when the 'confirm-code' button is clicked
      // Takes the value from the 'code' input and submits the code to verify the phone number
      // Return a user object if the authentication was successful, and auth is complete
      function submitPhoneNumberAuthCode() {
        var code = document.getElementById("code").value;
        confirmationResult
          .confirm(code)
          .then(function(result) {
            var user = result.user;
            console.log(user);
          })
          .catch(function(error) {
            console.log(error);
          });
      }

      //This function runs everytime the auth state changes. Use to verify if the user is logged in
      firebase.auth().onAuthStateChanged(function(user) {
        if (user) {
          console.log("USER LOGGED IN");
        } else {
          // No user is signed in.
          console.log("USER NOT LOGGED IN");
        }
      });
    </script>
</body>
</html>