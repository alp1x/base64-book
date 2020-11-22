(() => {
    window.onload = function(e) {
        window.addEventListener('message', function(event) {
            switch(event.data.action) {
                case 'openui':
                    showUi();
                    break;
            }
        });
    }

    function showUi() {
        $('body').removeClass('hidden');
    }

    function closeUi() {
        $('body').addClass('hidden');
    }
	
	

    

    document.onkeyup = function (data) {
        if (data.which == 27) { // Escape key
            $.post('http://base64-book/escape', JSON.stringify({}));
            location.reload(true);
            $('body').addClass('hidden');
        }
    }
    
})();
