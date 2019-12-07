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

function refreshProductFromServer() {
    const parent = document.getElementById('product-container');
    fetchGet('http://localhost:8080/Fashion/getListProduct/api')
        .then(products => {
            products.map((product) => {
                var child = createNode('div');
                child.className = "product-image";
                var childDivImage = createNode('div');
                var imgProduct = createNode('img');
                imgProduct.className = "img-product";
                var childDivDes = createNode('div');
                childDivDes.className = "product-description";
                var pName = createNode('p');
                var pPrice = createNode('p');
                var btnAdd = createNode('button');

                imgProduct.src = `${product.image}`;
                pName.innerHTML = `${product.name}`;
                pPrice.innerHTML = `${product.price}`;
                btnAdd.innerHTML = "Add";
                btnAdd.onclick = function() {

                };
                append(childDivDes, btnAdd);
                append(childDivDes, pPrice);
                append(childDivDes, pName);
                append(childDivImage, imgProduct);
                append(child, childDivDes);
                append(child, childDivImage);
                append(parent, child);
            })
        })
        .catch(error => {
            console.log(error)
        });
};

function refreshCategoryFromServer() {
    const parent = document.getElementById('selector');
    fetchGet('http://localhost:8080/Fashion/getListCategory/api')
        .then(categories => {
            categories.map((category) => {
                var child = createNode('span');
                var aName = createNode('a');
                aName.innerHTML = `${category.name}`;
                append(child, aName);
                append(parent, child);
            })
        })
        .catch(error => {
            console.log(error)
        });
};
window.addEventListener('load', function() {
    refreshCategoryFromServer();
    refreshProductFromServer();
}, false);

function createNode(element) {
    return document.createElement(element);
}

function append(parent, el) {
    return parent.appendChild(el);
}