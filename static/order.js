// Add event listener to the order buttons
document.querySelectorAll('.btn-order').forEach(button => {
    button.addEventListener('click', function() {
        const itemId = this.getAttribute('data-item-id');
        // Example: Redirect to payment page with itemId
        window.location.href = `/payment?item_id=${itemId}`;
    });
});
