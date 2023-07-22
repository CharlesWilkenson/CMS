$(document).ready(function () {
    /**
     * get data from Backend's REST API
     */
    $.ajax({
        type: "GET",
        url: "/api/content/management/service/contents/",
        contentType: "application/json",
        dataType: 'json',
        cache: false,
        timeout: 600000,
        success: function (response) {

            $('#content tbody').empty();
            // add table rows
            $.each(response.data, (i, content) => {
                let shopRow = '<tr>' +
                    '<td>' + content.id + '</td>' +
                    '<td>' + content.title + '</td>' +
                    '<td>' + content.brief + '</td>' +
                    '<td>' + content.createdDate + '</td>' +
                    '</tr>';
                $('#content tbody').append(shopRow);
            });
        },
        error: function (e) {
            console.log("ERROR: ", e);
        }
    });

    $("#contentForm").submit(function (event) {
        // Prevent the form from submitting via the browser.
        event.preventDefault();
        const formData = {
            title: $("#title").val(),
            brief: $("#brief").val(),
            content: $("#content").val(),
        };

        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: "/api/content/management/service/contents/add",
            data: JSON.stringify(formData),
            dataType: 'json',
            success: function (result) {
                successMessage (result);
            },
            error: function (error) {
                createErrorValidationResponse(error);
            }
        });
    });

});