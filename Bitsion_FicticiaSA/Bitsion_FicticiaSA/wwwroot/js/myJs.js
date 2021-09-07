function confirmed(title, text, icon) {
    return new Promise(resolve => {
        Swal.fire({
            title,
            text,
            icon,
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Si, Aceptar!'
        }).then((result) => {
            resolve(result.isConfirmed);
        })
    })

}

function Alert(title, icon) {
    Swal.fire({
        position: 'top-end',
        icon,
        title,
        showConfirmButton: false,
        timer: 4000
    })
}