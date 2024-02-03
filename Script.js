document.getElementById('booking-form').addEventListener('submit', function (event) {
    event.preventDefault();
    let train = document.getElementById('train').value;
    let source = document.getElementById('source').value;
    let destination = document.getElementById('destination').value;
    let date = document.getElementById('date').value;
    let classOfTravel = document.getElementById('class').value;

    // Display booking details for user confirmation
    alert(
        'You have successfully booked a ticket for the ' +
            train +
            ' from ' +
            source +
            ' to ' +
            destination +
            ' on ' +
            date +
            ' in ' +
            classOfTravel +
            ' class.'
   