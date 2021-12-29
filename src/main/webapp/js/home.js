jQuery(document).ready(function(){
	    $('.btn_alien_edit').click(function() {
        var rowNumber = $(this).attr('data-value');
        $('#aId').val(rowNumber);
        $('#aName').val($(this).parent('td').prev('td').text().trim());
    });
    
        $('.btn_alien_delete').click(function() {
        if (confirm("Are you sure you want to delete this vacancy?") == true) {
            var rowNumber = $(this).attr('data-value');

            $.ajax({
                url: './deleteAlien/'+rowNumber,
                type: 'POST',
                contentType : 'application/json',
                dataType: 'json',
                cache: false,
                async: false,
                /*data: {rowNumber: rowNumber},*/
              success: function(data) {
	alert(data.status);
                    if (data.status == true)
                    {
/*                        closewait();
                        $('body').scrollTop(0);*/
                     /**/   /*showalert("success", "Vacancy has been successfully deleted", 4000);*/
					setTimeout(function() {
						window.location.reload(true);
					}, 500);
                    }
                    else {
                      /*  closewait();*/
                        $('body').scrollTop(0);

                     /*   showalert("error", "You have no permission to delete this program.", 5000);*/

                    }
                }

/*            .done(function(){
	alert("hi");
}).fail(function(){
	alert("error");*/
});

        }

    });
});