function duedatecheck() {
       let date = document.getElementById('duedate').value;
       let now = new Date();
       let dt1 = Date.parse(now),
       dt2 = Date.parse(date);
       if (dt2 <= dt1) {
	      document.getElementById('duedate').value = " ";
            alert("Date must be in the Future");

       }
 }