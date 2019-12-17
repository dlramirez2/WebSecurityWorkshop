<?php
	include('header.php');
?>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>About Javascript</title>
    <link rel="stylesheet" href="./styleJS.css">
  </head>
  <body>
    <h1>Welcome</h1>
    <h2>This is an Introduction to Javascript</h2>
    <div id="intro_box">
      <h3>What is Javascript? </h3>
      <p>
        Javascript is a scripting or programming language that allow you to implement
        conplex things on web pages
      </p>
      <h3>Example</h3>
      <div id="button_area">
        <button type="button" name="light_switch">click me!</button>
      </div>
        <div id="play_box"></div>
      <p>
        Press f12 to access the browser console, and check the source code of
        the website. Lock the the script tag.
      </p>
    </div>

    <div id="cyber_workshop">
      <h2>Making an alert box in the browser</h2>
      <p>Similar to the above code, we will use javascript to create a alert
        box.
      </p>
      <button type="button" name="alert">Display alert box</button>
    </div>

    <script type="text/javascript">
      // How Javascript Works
      // decalartion of varaibles.
      // querySelector gets the item from html
      var btn = document.querySelector("#intro_box button");
      var box = document.querySelector("#play_box");
      var s = 0;

      // when we press the button change the color of our box
      btn.addEventListener("click", function(){
        if(s == 0){
          box.style.backgroundColor = "blue";
          s += 1;
        }
        else{
          box.style.backgroundColor = "red";
          s = 0;
        }
        });

      // workshop alert box;
      var alertBtn = document.querySelector("#cyber_workshop button");
      alertBtn.addEventListener("click", function(){
        alert("Hello World");
      });

    </script>
  </body>
</html>
