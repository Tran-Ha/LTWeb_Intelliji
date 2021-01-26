function orderAndMemberSearch() {
    var searchmodfbox_jqgrid = document.getElementById("searchmodfbox_jqgrid");
    if (searchmodfbox_jqgrid == null) {
        console.log("not found searchmodfbox_jqgrid!");
    } else {
        var style = searchmodfbox_jqgrid.getAttribute("style");
        if (style.includes("display: none")) {
            var editedStyle = style.replace("none", "block");
            searchmodfbox_jqgrid.setAttribute("style", editedStyle);
        } else {
            var editedStyle = style.replace("block", "none");
            searchmodfbox_jqgrid.setAttribute("style", editedStyle);
        }
    }
}