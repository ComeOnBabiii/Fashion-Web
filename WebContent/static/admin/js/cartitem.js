async function fetchGet(url) {
    try {
        let headers = {
            Accept: 'application/json',
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': url
        };
        let requestInit = { method: 'GET', headers };
        const response = await fetch(url, requestInit);
        if (response.status === 200) return await response.json();
    } catch (error) {
        throw error;
    }
};

window.addEventListener('load', function() {
    var urlParams = new URLSearchParams(window.location.search);
    var id = urlParams.get("id");
    refreshCartItemFromServer(id);
}, false);

function createNode(element) {
    return document.createElement(element);
}

function append(parent, el) {
    return parent.appendChild(el);
}


function refreshCartItemFromServer(id) {
    const parent = document.getElementById('tbody');
    fetchGet(`http://localhost:8080/Fashion/cartitem/api/${id}`)
        .then(cartItems => {
            cartItems.map((cartItem, index) => {
                var idz = `${cartItem.id}`;
                var child = createNode('tr');
                var tdId = createNode('td');
                var tdCart = createNode('td');
                var tdProduct = createNode('td');
                var tdQuantity = createNode('td');
                var tdUnit = createNode('td');
                tdId.innerHTML = index + 1;
                tdCart.innerHTML = `${cartItem.cart.id}`;
                tdProduct.innerHTML = `${cartItem.product.name}`;
                tdQuantity.innerHTML = `${cartItem.quantity}`;
                tdUnit.innerHTML = `${cartItem.unitPrice}`;

                append(child, tdId);
                append(child, tdCart);
                append(child, tdProduct);
                append(child, tdQuantity);
                append(child, tdUnit);
                append(parent, child);
            })
        })
        .catch(error => {
            console.log(error)
        });
};