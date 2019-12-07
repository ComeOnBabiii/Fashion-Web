async function fetchGet(
    url,
    params = null,
    messErr = null,
) {
    try {
        let headers = {
            Accept: 'application/json',
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': 'http://localhost:8080/Fashion/addToCart/api'
        };
        // if (isAuthorization)
        //     headers.Authorization = await AsyncStorage.getItem('token');
        let requestInit = { method: 'GET', headers };
        let queryString = '';
        // if (params) {
        //     queryString = `?${Object.keys(params)
        //         .map(key => `${key}=${params[key] || ''}`)
        //         .join('&')}`;
        // }
        const response = await fetch('http://localhost:8080/Fashion/addToCart/api',
            requestInit,
        );
        if (response.status === 403) throw Error('invalidToken');
        if (response.status === 200) return await response.json();
        if (messErr) throw Error(messErr);
    } catch (error) {
        throw error;
    }
};

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

/*function clearForm() {
    document.getElementById("usernameInput").value = "";
    document.getElementById("passwordInput").value = "";
}*/

async function addtocart(m) {
	alert(m);
	//var id = await document.getElementById("idInput").value;	
	//debugger;
	    var obj = {
	    	id:id    	
	    }
	    insertObjectToServer(obj);
}
