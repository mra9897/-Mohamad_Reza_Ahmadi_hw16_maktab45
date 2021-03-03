$(function () {
    const urlParams = new URLSearchParams(window.location.search);
    const resultAction = urlParams.get('d');
    const type = urlParams.get('type');
    let formType;
    let companyID = "";
    if(resultAction !== null){
        if (resultAction === "done")
            toastIt("bg-success", "operation successfully complete");
        else
            toastIt("bg-danger", "failed to complete operation");
    }
    if (type === "add") {
        formType = "create";
        $("#buttons").html('' +
            '<button class="btn btn-light" id="submit">\n' +
            '                                <i class="fa fa-check"></i>\n' +
            '                                Save\n' +
            '                            </button>' +
            '');
    } else {
        formType = "update";
        let uri = window.location.href.split('/');
        companyID = uri[uri.length - 1];
        $("#buttons").html('' +
            '<button id="submit" class="btn btn-light">\n' +
            '                                <i class="fa fa-edit"></i>\n' +
            '                                Update\n' +
            '                            </button>\n' +
            '                            <button id="delete" class="btn btn-danger">\n' +
            '                                <i class="fa fa-trash"></i>\n' +
            '                                Delete\n' +
            '                            </button>' +
            '');
    }
    $('#edit').on('click', () => $('#name').attr("disabled", false).toggleClass("hidden-input form-control"));
    $('#submit').on('click', ()=>{
        let data = {};
        data.name = $('#name').val();
        data.province = $('#province').val();
        data.city = $('#city').val();
        data.register_code = $('#register_code').val();
        data.register_date = $('#register_date').val();
        data.phone = $('#phone').val();
        let url = `http://localhost:5002/company/${formType}/${companyID}`
        $.ajax({
            url,
            method: companyID === "" ? "POST" : "PUT",
            data: JSON.stringify(data),
            contentType: "application/json",
            success: result => {
                if(result.result) {
                    toastIt("bg-success", "operation successfully complete");
                    if(companyID === "") $('input').val('');
                }
                else
                    toastIt("bg-danger", "failed to complete operation");
            },
            error: err => {
                console.log("err", err);
            }
        })
    });
    $('#delete').on('click', () => {
        if (confirm("are you really sure about this horrible action?\nyou can't travel in time to get it back!"))
            $.ajax({
                url: "http://localhost:5002/company/delete/" + companyID,
                type: "DELETE",
                success: result => {
                    if (result.result)
                        window.location.href = "/company/all?d=done";
                    else
                        window.location.href = "/company/all?d=failed";
                },
                error: err => {
                    console.log("ERR", err);
                }
            });
    });
});

const toastIt = (bg, text) => {
    $(".toast")
        .removeClass("bg-danger")
        .removeClass("bg-success")
        .addClass(bg)
        .toast("show");
    $(".toast-body").text(text);
    setTimeout(() => window.history.pushState(null, null, '/company/all'), 3000);
}