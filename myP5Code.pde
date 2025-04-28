var quarterX = [180, 380];
var quarterY = [117, 188];
var eighthX = [280];
var eighthY = [151];
var wholeX = [480];
var wholeY = [103];

var lyrics = ["LA", "LAA", "LAAA"];
var emojis = ["🎶", "🎵", "🎧"];
var beats = [120, 90, 100];

// draw notes
var drawnotes = function() {
    fill(0); // ✅ make notes black
    textSize(100);
    for (var i = 0; i < quarterX.length; i++) {
        text("♩", quarterX[i], quarterY[i]);
    }
    for (var i = 0; i < eighthX.length; i++) {
        text("♫", eighthX[i], eighthY[i]);
    }
    for (var i = 0; i < wholeX.length; i++) {
        text("𝅝", wholeX[i], wholeY[i]);
    }
};

var drawLyrics = function() {
    textSize(20);
    fill(0);
    for (var i = 0; i < lyrics.length; i++) {
        text(lyrics[i], 20, 300 + i * 25);
    }
};

var drawButton = function() {
    fill(70, 130, 180); 
    rect(450, 370, 120, 40, 10);
    fill(0);
    textSize(14);
    text("SING", 470, 398);
};

setup = function() {
    size(600, 450); 
    background(164, 212, 255, 0);
    drawnotes();
    drawLyrics();
    drawButton();
};

var redrawCanvas = function() {
    background(164, 212, 255, 0);
    drawnotes();
    drawLyrics();
    drawButton();
};

mouseClicked = function() {
    // if mouse inside button area
    if (mouseX > 450 && mouseX < 570 && mouseY > 370 && mouseY < 410) {
        lyrics.push("MAHHHHHHH");
        redrawCanvas();
    }
};