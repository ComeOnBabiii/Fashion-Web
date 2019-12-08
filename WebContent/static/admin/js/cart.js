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

function refreshCartFromServer() {
    const parent = document.getElementById('tbody');
    fetchGet('http://localhost:8080/Fashion/cart/api')
        .then(carts => {
            carts.map((cart, index) => {
                var idz = `${cart.id}`;
                var child = createNode('tr');
                var tdId = createNode('td');
                var tdCustomer = createNode('td');
                var tdDate = createNode('td');
                var tdDetail = createNode('td');
                var btnDetail = createNode('button');
                tdId.innerHTML = index + 1;
                tdCustomer.innerHTML = `${cart.buyer.username}`;
                tdDate.innerHTML = `${cart.buyDate}`;
                btnDetail.innerHTML = "Detail";
                btnDetail.onclick = function() {
                    location.replace("http://localhost:8080/Fashion/admin/cartitem/list?id=" + idz);
                };

                append(tdDetail, btnDetail);
                append(child, tdId);
                append(child, tdCustomer);
                append(child, tdDate);
                append(child, tdDetail);
                append(parent, child);
            })
        })
        .catch(error => {
            console.log(error)
        });
};


window.addEventListener('load', function() {
    refreshCartFromServer();
}, false);

function createNode(element) {
    return document.createElement(element);
}

function append(parent, el) {
    return parent.appendChild(el);
}