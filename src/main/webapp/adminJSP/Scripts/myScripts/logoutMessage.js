function logoutMessage() {
    var div = document.createElement("div");

    var text = '<div class="divMessageBox animated fadeIn fast" id="logoutMessageBox">' +
        '<div class="MessageBoxContainer animated fadeIn fast" id="Msg1">' +
        '<div class="MessageBoxMiddle"><span class="MsgTitle"><i class="fa fa-sign-out txt-color-orangeDark"></i>' +
        'Logout<span class="txt-color-orangeDark"><strong></strong></span> ?</span>' +
        '<p class="pText">Bạn có muốn đăng xuất khỏi hệ thống không?</p>' +
        '<div class="MessageBoxButtonSection"><button id="bot1-Msg1" class="btn btn-default btn-sm botTempo">' +
        'No</button><button id="bot2-Msg1" class="btn btn-default btn-sm botTempo"> Yes</button></div>' +
        '</div> </div> </div>';

    var body = document.getElementsByTagName("body")[0];
    div.append(text);
    body.appendChild(div);
}

document.getElementById("logoutButtonOnHeader").setAttribute("onclick", "logoutMessage()")
