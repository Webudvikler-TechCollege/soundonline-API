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
    console.log(url);
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
            products.innerHTML = '';
            for(let item of data) {
                let article = document.createElement('article');
                let figure = document.createElement('figure');
                let img = document.createElement('img');
                let h2 = document.createElement('h2');
                img.setAttribute('src', '/images/products/' + item.image);
                figure.appendChild(img);
                article.appendChild(figure);
                h2.innerText = item.title;
                article.appendChild(h2);

                products.appendChild(article);
            }
        })
        .catch(err => {
            console.error(err);
        });
}
/**


*/