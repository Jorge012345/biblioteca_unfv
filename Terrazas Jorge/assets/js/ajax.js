export default function ajax(options){
    let { url, method, success, error, data } = options;
    const xhr = new XMLHttpRequest();
  
    xhr.addEventListener("readystatechange", (e) => {
      if (xhr.readyState !== 4) return;
  
      if (xhr.status >= 200 && xhr.status < 300) {
        success(xhr.responseText);
      } else {
        let message = xhr.statusText || "Ocurrió un error";
        error(`Error ${xhr.status}: ${message}`);
      }
    });
  
    xhr.open(method || "GET", url);
    xhr.setRequestHeader("enc-type", "multipart/form-data");
    xhr.send(data);
  };