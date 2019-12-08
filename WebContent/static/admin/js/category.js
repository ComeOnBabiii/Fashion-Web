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

async function insertObjectToServer(url, body) {
    try {
        var response = await fetch(url, {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
                'Access-Control-Allow-Origin': url,
            },
            body: JSON.stringify(body)
        });
        let responseJson = await response.json();
        return responseJson.result;
    } catch (error) {
        console.error(`Error is : ${error}`);
    }
}

async function updateObjectToServer(url, body) {
    try {
        var response = await fetch(`${url}/${body.id}`, {
            method: 'PUT',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(body)
        });
        let responseJson = await response.json();
        return responseJson.result;
    } catch (error) {
        console.error(`Error is : ${error}`);
    }
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
var checked = 0;

function refreshDataFromServer() {
    const parent = document.getElementById('tbody');
    fetchGet("http://localhost:8080/Fashion/getListCategory/api")
        .then(categories => {
            categories.map((category) => {
                var idz = `${category.id}`;
                var child = createNode('tr');
                var tdId = createNode('td');
                var tdName = createNode('td');
                var tdDescription = createNode('td');
                var tdDelete = createNode('td');
                var tdEdit = createNode('td');
                var btnDelete = createNode('button');
                var btnEdit = createNode('button');
                tdId.innerHTML = `${category.id}`;
                tdName.innerHTML = `${category.name}`;
                tdDescription.innerHTML = `${category.description}`;
                btnDelete.innerHTML = "Delete";

                btnDelete.onclick = async function() {
                    await fetchGet("http://localhost:8080/Fashion/getListProduct/api")
                        .then(products => {
                            products.map((product) => {
                                if ((category.id === product.category.id)) {
                                    checked = -1;
                                }
                            })
                        })
                        .catch(error => {
                            console.log(error)
                        });
                    if (checked === 0) {
                        deleteObjectToServer("http://localhost:8080/Fashion/getListCategory/api", category.id).then(document.location.reload(true));
                    } else {
                        alert("Conflict");
                        checked = 0;
                    }

                };

                btnEdit.innerHTML = "Edit";
                btnEdit.onclick = function() {
                    location.replace("http://localhost:8080/Fashion/admin/category/edit?id=" + idz)
                };

                append(tdEdit, btnEdit);
                append(tdDelete, btnDelete);
                append(child, tdId);
                append(child, tdName);
                append(child, tdDescription);
                append(child, tdDelete);
                append(child, tdEdit);
                append(parent, child);
            })
        })
        .catch(error => {
            console.log(error)
        });
};


window.addEventListener('load', function() {
    refreshDataFromServer();
}, false);

function createNode(element) {
    return document.createElement(element);
}

function append(parent, el) {
    return parent.appendChild(el);
}

async function insertCategory() {
    var name = await document.getElementById("nameInput").value;
    var description = await document.getElementById("descriptionInput").value;
    if (name !== "") {
        var obj = {
            name: name,
            description: description
        }
        await insertObjectToServer("http://localhost:8080/Fashion/getListCategory/api", obj).then(
            location.replace("http://localhost:8080/Fashion/admin/category/list")
        )
    } else {
        alert("Invalid category");
    }
}

async function updateCategory() {
    var id = await document.getElementById("idInput").value;
    var name = await document.getElementById("nameInput").value;
    var description = await document.getElementById("descriptionInput").value;
    if (name !== "") {
        var obj = {
            id: id,
            name: name,
            description: description
        }
        updateObjectToServer("http://localhost:8080/Fashion/getListCategory/api", obj).then(location.replace("http://localhost:8080/Fashion/admin/category/list"));
    } else {
        alert("Invalid category");
    }
}