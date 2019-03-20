/**
 * Fetcher data til aktiviteter
 */

fetchgroups(0);

function fetchgroups(parent_id) {

    fetch("https://heka5.apache.techcollege.dk/api/productgroups/getbyparent/" + parent_id)
        .then(response => {
            if(!response.ok) {
                throw Error(response.statusText);
            } else {
                return response.json();
            }
        })
        .then(data => {

            let ul = document.createElement('ul');
            ul.setAttribute('id', 'group-' + parent_id);

            //Looper data array
            for (var item of data) {
                let id = item.id;
                let li = document.createElement('li');
                li.setAttribute('id', 'list-' + id);
                if(item.parent_id > 0) {
                    li.addEventListener('click', () => { getproducts(id)} );
                } else {
                    li.addEventListener('click', () => { fetchgroups(id)} );
                }
                li.innerText = item.title;
                ul.appendChild(li);
            }

            if(parent_id > 0) {
                let list = document.querySelectorAll('li');
                for(let li of list)  {
                    if(li.childNodes.length > 1) {
                        li.childNodes[1].remove();
                    }
                }
                document.getElementById('list-' + parent_id).appendChild(ul);
            } else {
                document.getElementById('groups').appendChild(ul);
            }
        })
        .catch(err => {
            console.error(err);
        });

}

function getproducts(group_id) {
    let url = 'https://heka5.apache.techcollege.dk/api/products/getbygroup/' + group_id;

    fetch(url)
        .then(response => {
            if(!response.ok) {
                throw Error(response.statusText);
            } else {
                return response.json();
            }
        })
        .then(data => {
            let products = document.getElementById('products');
            products.classList.remove('productdetails');
            products.classList.add('productlist');
            products.innerHTML = '';
            for(let item of data) {
                let article = document.createElement('article');
                article.addEventListener('click', () => {
                    getproduct(item.id);
                });
                let figure = document.createElement('figure');
                let img = document.createElement('img');
                let h2 = document.createElement('h2');
                let p = document.createElement('p');
                img.setAttribute('src', '/images/products/' + item.image);
                figure.appendChild(img);
                article.appendChild(figure);
                h2.innerText = item.title;
                article.appendChild(h2);
                p.innerText = item.description_short;
                article.appendChild(p);
                let span = document.createElement('span');
                span.setAttribute('class', 'price');
                span.innerText = (item.price/100) + ',00 DKK';
                article.appendChild(span);
                products.appendChild(article);
            }
        })
        .catch(err => {
            console.error(err);
        });
}

function getproduct(id) {
    let url = 'https://heka5.apache.techcollege.dk/api/products/get/' + id;
    fetch(url)
        .then(response => {
            if(!response.ok) {
                throw Error(response.statusText);
            } else {
                return response.json();
            }
        })
        .then(data => {
            let products = document.getElementById('products');
            products.classList.remove('productlist');
            products.classList.add('productdetails');

            products.innerHTML = '';

            let article = document.createElement('article');
            let figure = document.createElement('figure');
            let img = document.createElement('img');
            let h1 = document.createElement('h1');
            let p = document.createElement('p');
            img.setAttribute('src', '/images/products/' + data[0].image);
            figure.appendChild(img);
            article.appendChild(figure);
            h1.innerText = data[0].title;
            article.appendChild(h1);
            p.innerHTML = data[0].description_long;
            article.appendChild(p);
            let span = document.createElement('span');
            span.setAttribute('class', 'price');
            span.innerText = (data[0].price/100) + ',00 DKK';
            article.appendChild(span);
            products.appendChild(article);

        })
        .catch(err => {
            console.error(err);
        })
}