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
                var imgProduct = createNode('img');
                imgProduct.className = "img-product";
                var childDivDes = createNode('div');
                childDivDes.className = "product-description";
                var pName = createNode('p');
                var pPrice = createNode('p');
                var btnAdd = createNode('button');

                imgProduct.src = `${product.image}`;
                pName.innerHTML = `${product.name}`;
                pPrice.innerHTML = `${product.price} $` ;
                pName.className = "product-name";
                pPrice.className = "product-price";
                
                btnAdd.innerHTML = "Add";
                btnAdd.onclick = function() {
                	var id = `${product.id}`;
                	//alert(idpro);
                	var obj = {
                			id: id
                	    }
                	    insertObjectToServer(obj);
                		alert("Success");
                };
                append(childDivDes, imgProduct);
                append(childDivDes, btnAdd);
                append(childDivDes, pName);    
                append(childDivDes, pPrice);                         
                append(child, childDivDes);
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

async function insertObjectToServer(obj) {
    try {
        var response = await fetch("http://localhost:8080/Fashion/addToCart/api", {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
                'Access-Control-Allow-Origin': 'http://localhost:8080/Fashion/addToCart/api',
            },
            body: JSON.stringify(obj)
        });
        let responseJson = await response.json();
        return responseJson.result;       
        //location.replace("http://localhost:8080/Fashion/admin/category/edit")
    } catch (error) {
        console.error(`Error is : ${error}`);
    }
}

async function deleteCart(key) {
	//alert(key);
    var obj = {
    	key:key
    }
    await deleteObjectToServer('http://localhost:8080/Fashion/addToCart/api', obj.key).then(
        location.replace("http://localhost:8080/Fashion/listcart")
    )
}

async function deleteObjectToServer(url, id) {
    try {
        var response = await fetch(`${url}/${id}`, {
            method: 'DELETE',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
            },
        });
        var responseJson = await response.json();
        return responseJson.result;
    } catch (error) {
        console.error(`Error is : `);
    }
}
