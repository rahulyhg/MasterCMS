$(document).ready(function() {
    loginForm();    
});

function loginForm() {
    var form = $('#loginFormulary'),
        active = 0,
        top = $(window).scrollTop(),
        boton = $('#login');

    form.submit(function(event) {
        event.preventDefault();
        if (active == 0) {
            active = 1;
            data = form.serialize();
            $.ajax({
                url: '/forms/login',
                type: 'POST',
                data: data,
                beforeSend: function(){
                    $('#error').addClass('loading');
                    $('#error').html('<div class="loader_error"></div>');
                    $('#error').addClass('fixed');
                    boton.attr('disabled', true);
                },
                success: function(error) {
                    $('#error').fadeIn(500, function () {
                        setTimeout(function () {
                            active = 0;
                            boton.attr('disabled', false);
                        }, 500);
                    }); 

                    $('#error').removeClass('loading');
                    top = $(window).scrollTop();
                    if (top < 300) {
                        $('#error').removeClass('fixed');
                    }
                    $('#error').html(error);
                    $('#username, #password').val('');
                }
            });
        }
    });
    $('#error .alert button[data-dismiss="alert"]').click(function(event) {
        event.preventDefault();
        $('#error').hide('blind', 300);
    });
}