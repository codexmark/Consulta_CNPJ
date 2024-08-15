// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap";
import "sweetalert2";

document.addEventListener('turbo:load', () => {
    const alertMessage = document.querySelector('.flash-alert');
    if (alertMessage) {
        Swal.fire({
            icon: 'warning',
            title: 'Atenção!',
            text: alertMessage.innerText,
            confirmButtonText: 'Ok'
        });
    }
});
