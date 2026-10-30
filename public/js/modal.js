// Control del Modal Emergente Premium de Conferencia
document.addEventListener('DOMContentLoaded', function () {
    const closePopupButton = document.getElementById('closePopup');
    const popup = document.getElementById('popup');
    const overlay = document.getElementById('overlay');

    if (popup && overlay) {
        // Función para abrir la ventana emergente con animación fluida
        function openPopup() {
            // Mostrar elementos en display block antes de activar opacidad/transform
            overlay.style.display = 'block';
            popup.style.display = 'block';
            
            // Retardo mínimo para disparar la transición CSS activa
            setTimeout(() => {
                popup.classList.add('active');
                overlay.style.opacity = '1';
            }, 100);
        }

        // Función para cerrar la ventana emergente
        function closePopup() {
            popup.classList.remove('active');
            overlay.style.opacity = '0';
            
            // Ocultar del DOM tras concluir la transición
            setTimeout(() => {
                popup.style.display = 'none';
                overlay.style.display = 'none';
            }, 400);
        }

        // Evento de cierre por botón
        closePopupButton.onclick = closePopup;

        // Evento de cierre al hacer clic en el fondo difuminado (Overlay)
        overlay.onclick = closePopup;

        // Abrir el popup 1.2 segundos después de cargar la página
        setTimeout(openPopup, 1200);
    }
});