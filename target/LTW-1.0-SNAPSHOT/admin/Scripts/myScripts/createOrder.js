function searchProduct() {
    var element = document.getElementsByClassName("panel panel-default")[0];
    var string = element.getAttribute("class");

    if (string.includes("active", 0)) {
        element.setAttribute("class", "panel panel-default");
    } else {
        element.setAttribute("class", "panel panel-default active");
    }
}

function searchCustomer() {
    var element = document.getElementsByClassName("panel panel-default")[2];
    var string = element.getAttribute("class");

    if (string.includes("active", 0)) {
        element.setAttribute("class", "panel panel-default");
    } else {
        element.setAttribute("class", "panel panel-default active");
    }
}