<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gradle Deploy</title>
</head>
<body>
    <h1>&#9996; &#9996; &#9996; Congratulation !! Congratulation !! &#9996; &#9996; &#9996;</h1>
    <p> Today is  </p>
    <div id="currentDay"></div>


  <script>
    // Function to get the current day of the week
    function getCurrentDay() {
      const days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
      const currentDate = new Date();
      const currentDayIndex = currentDate.getDay();
      return days[currentDayIndex];
    }

    // Update the HTML elements with current day and time
    function updateDayAndTime() {
      const currentDayElement = document.getElementById('currentDay');

      currentDayElement.textContent =  getCurrentDay();
 
    }

    // Call the function initially to display the current day and time
    updateDayAndTime();

    // Update the current day and time every second
    setInterval(updateDayAndTime, 1000);
  </script>
</body>
</html>

