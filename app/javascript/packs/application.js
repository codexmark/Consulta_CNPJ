// app/javascript/packs/application.js

import 'bootstrap'; // Certifique-se de que o Bootstrap está instalado via Yarn
import Swal from 'sweetalert2';

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
