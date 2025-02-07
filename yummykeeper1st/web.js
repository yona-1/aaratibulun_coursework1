console.log("JS added");

// Select elements
let image1Btn = document.querySelector("#image1");
let image2Btn = document.querySelector("#image2");
let image3Btn = document.querySelector("#image3");
let image4Btn = document.querySelector("#image4");
let cw = document.getElementById("cw");

// Event listeners for image selection
image1Btn.addEventListener("click", () => {
    console.log("Image1 is clicked");
    cw.style.backgroundImage = "url('img1.png')";
});

image2Btn.addEventListener("click", () => {
    console.log("Image2 is clicked");
    cw.style.backgroundImage = "url('img2.webp')";
});

image3Btn.addEventListener("click", () => {
    console.log("Image3 is clicked");
    cw.style.backgroundImage = "url('img3.webp')";
});

image4Btn.addEventListener("click", () => {
    console.log("Image4 is clicked");
    cw.style.backgroundImage = "url('img4.webp')";
});
