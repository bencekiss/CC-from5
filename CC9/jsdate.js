var date = new Date();
var daynum = date.getDay();
var days=[
  'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'
];
var day = days[daynum];
var timenum = date.getHours();
var hour = undefined;
if (timenum === 0) {
  hour = '12 AM : '
} else if (timenum < 12) {
  hour = timenum + ' AM : '
} else if (timenum === 12) {
  hour = timenum + ' PM : '
}else {
  hour = (timenum - 12) + ' PM : '
}


console.log('Today is: ' + day + '. Current time is: ' + hour + date.getMinutes() + ' : ' + date.getSeconds() + '.');
