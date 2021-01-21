function userButtonAction() {
    var userButtonOnHeader = document.getElementById("userButtonOnHeader");
    var languageButtonOnHeader = document.getElementById("languageButtonOnHeader");

    var userClasses = userButtonOnHeader.getAttribute("class");

    if (userClasses.includes("open", 0)) {
        userButtonOnHeader.setAttribute("class", userClasses.replace("open", ""));
    } else {
        languageButtonOnHeader.setAttribute("class", userClasses.replace("open", ""));
        userButtonOnHeader.setAttribute("class", "open");
    }
}

function languageButtonAction() {
    var languageButtonOnHeader = document.getElementById("languageButtonOnHeader");
    var userButtonOnHeader = document.getElementById("userButtonOnHeader");

    var languageClasses = languageButtonOnHeader.getAttribute("class");

    if (languageClasses.includes("open", 0)) {
        languageButtonOnHeader.setAttribute("class", languageClasses.replace("open", ""));
    } else {
        userButtonOnHeader.setAttribute("class", languageClasses.replace("open", ""));
        languageButtonOnHeader.setAttribute("class", "open");
    }
}

document.getElementById("userButtonOnHeader").setAttribute("onclick", "userButtonAction()")
document.getElementById("languageButtonOnHeader").setAttribute("onclick", "languageButtonAction()")

