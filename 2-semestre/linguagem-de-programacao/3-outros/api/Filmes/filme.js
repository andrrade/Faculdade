async function busca() {
    const apiKey = '532d4837'; // Substitua pela sua chave de API.
    const movieName = document.getElementById('filme').value;
    const movieYear = document.getElementById('year').value;

    const apiUrl = `https://www.omdbapi.com/?t=${movieName}&y=${movieYear}&type=movie&apikey=${apiKey}`;

    const response = await fetch(apiUrl);
    const data = await response.json();

    if (data.Response === 'True') {
        const movieTitle = data.Title;
        const moviePoster = data.Poster;
        const movieYear = data.Year;
        const moviePlot = data.Plot

        let item = document.createElement("div");
        item.classList.add("item");
        item.innerHTML = `<img src="${moviePoster}">
        <h2>${movieTitle}</h2> 
        <p>(${movieYear})</p>
        <p>(${moviePlot})</p>`;

        lista.appendChild(item); // Adicione o item à lista
    } else {
        alert('Nenhum resultado encontrado.');
    }
}


