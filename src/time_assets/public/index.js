import time from 'ic:canisters/time';

time.greet(window.prompt("Enter your name:")).then(greeting => {
  window.alert(greeting);
});
