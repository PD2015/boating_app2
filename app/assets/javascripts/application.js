// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

// NEED TO MAKE SURE ALL IMAGES NOT REQUIRED TO LOAD BEFORE PAGE LOAD
var imgSrcs = ["https://scontent-lhr3-1.cdninstagram.com/t51.2885-15/e35/11337192_1224637400879998_814943701_n.jpg?ig_cache_key=MTEwMDUzNTkyNDY0MDcyMjk4Nw%3D%3D.2",
                "https://scontent-lhr3-1.cdninstagram.com/t51.2885-15/e15/1169833_288380188035964_445844105_n.jpg?ig_cache_key=ODIwOTAwMTMxNDEwMDMxMzEy.2",
                "https://scontent-lhr3-1.cdninstagram.com/t51.2885-15/e15/11191035_686622594814403_380797073_n.jpg?ig_cache_key=OTczNzg3Mzc4MDgwODIxNDg3.2",
                "https://scontent-lhr3-1.cdninstagram.com/t51.2885-15/e15/10448966_257547834447209_98717293_n.jpg?ig_cache_key=NzU0MDExNzA5MjE1MzU1ODMx.2",
                "https://scontent-lhr3-1.cdninstagram.com/t51.2885-15/e15/10693798_1485283505081235_532624875_n.jpg?ig_cache_key=ODIyMjcyNDA4NDY2NzY0MTk0.2",
                "https://scontent-lhr3-1.cdninstagram.com/t51.2885-15/e15/10570012_267614063429871_2013342039_n.jpg?ig_cache_key=NzcyMzU5MjA4OTYzNDIwNzM5.2",
                "https://scontent-lhr3-1.cdninstagram.com/t51.2885-15/s640x640/sh0.08/e35/11417377_1643865802551844_703557916_n.jpg?ig_cache_key=MTAyOTc2MjY4NDkzOTQxNjUzMw%3D%3D.2", 
              "https://scontent-lhr3-1.cdninstagram.com/t51.2885-15/e35/12748378_735701729899326_9018041_n.jpg?ig_cache_key=MTE4NzA0OTAwNDEwNjc4OTMzMQ%3D%3D.2", 
              "https://scontent-lhr3-1.cdninstagram.com/t51.2885-15/s640x640/sh0.08/e35/11374421_1468397336823626_1233089978_n.jpg?ig_cache_key=MTA3ODA5NjQ1NzY5OTE3NjY0NA%3D%3D.2"];
setInterval(function() {
    $(".home-bkgd").css("background-image", "url(" + imgSrcs[imgSrcs.push(imgSrcs.shift())-1] + ") ");
}, 3000);