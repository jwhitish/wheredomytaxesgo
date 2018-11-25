function showTable() {
    if (document.getElementById('optionOneCheck').checked) {
        document.getElementById('optionOne').style.display = 'inline';
        document.getElementById('optionTwo').style.display = 'none';
        document.getElementById('optionThree').style.display = 'none';
    }
    else if (document.getElementById('optionTwoCheck').checked) {
        document.getElementById('optionTwo').style.display = 'inline';
        document.getElementById('optionOne').style.display = 'none';
        document.getElementById('optionThree').style.display = 'none';
    }
    else if (document.getElementById('optionThreeCheck').checked) {
        document.getElementById('optionThree').style.display = 'block';
        document.getElementById('optionTwo').style.display = 'none';
        document.getElementById('optionOne').style.display = 'none';
    }
    else { document.getElementById('optionOne').style.display = 'none';
    document.getElementById('optionTwo').style.display = 'none';
    }
}
