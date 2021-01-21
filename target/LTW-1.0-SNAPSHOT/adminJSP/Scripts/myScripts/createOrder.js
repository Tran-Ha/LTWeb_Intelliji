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

function addDiscount() {
    var modalDiscount = document.getElementById("modalDiscount");
    var style = modalDiscount.getAttribute("style");

    if (style.includes("display:none")) {
        var newStyle = style.replace("display:none", "display:block");
        modalDiscount.setAttribute("style", newStyle);
    } else {
        var newStyle = style.replace("display:block", "display:none");
        modalDiscount.setAttribute("style", newStyle);
    }
}

