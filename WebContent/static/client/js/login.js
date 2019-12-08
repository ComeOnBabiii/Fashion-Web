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
        var check= responseJson.check;
        if (check=="OKClient") {
        	location.replace("http://localhost:8080/Fashion/home");
        }else {
        	location.replace("http://localhost:8080/Fashion/client/login");
        	alert("Wrong username or password!");
        }
    } catch (error) {
        console.error(`Error is : ${error}`);
    }
}

async function loginUser() {
    var username = await document.getElementById("usernameInput").value;
    var password = await document.getElementById("passwordInput").value;
    
    
    var rkEncryptionKey = CryptoJS.enc.Base64.parse('u/Gu5posvwDsXUnV5Zaq4g==');
    var rkEncryptionIv = CryptoJS.enc.Base64.parse('5D9r9ZVzEYYgha93/aUK2w==');
    var utf8Stringified = CryptoJS.enc.Utf8.parse(password);
    var encrypted = CryptoJS.AES.encrypt(utf8Stringified.toString(), rkEncryptionKey, 
   {mode: CryptoJS.mode.CBC, padding: CryptoJS.pad.Pkcs7, iv: rkEncryptionIv});
    password = encrypted.ciphertext.toString(CryptoJS.enc.Base64);
    
    var obj = {
        username: username,
        password: password
        
    }
    await insertObjectToServer("http://localhost:8080/Fashion/login/api", obj);
}
