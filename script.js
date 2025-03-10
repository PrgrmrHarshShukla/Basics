const mainDiv = document.getElementById('mainDiv');
let value = 1;

const create = (divID) => {
    if(value >= 5000000){

    }
    const newDivId = divID + (++value);
    const mainDiv = document.getElementById(divID);
    const newDiv = document.createElement('div');
    newDiv.id = newDivId;
    mainDiv.appendChild(mainDiv);

}

(async function() {
    const data = await functionB();
    console.log("Hello")
})()

const functionB = async() => {
    setTimeout(() => {
        return 5;
    }, 2000)
}