import Swal from 'sweetalert2';

document.addEventListener('DOMContentLoaded', () => {
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
