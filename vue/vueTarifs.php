<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Nouvelle Visite</title>

<div class="row m-3">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Museum Vision &#128508;</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="Nouvelle entrée">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Nouvelle entrée<span class="sr-only"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Visites en cours</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Paramètre</a>
                </li>
            </ul>
            <span class="navbar-text">
        </span>
        </div>
    </nav>
</div>
</br>
</br>

<div class="m-3">
<p>Selectionnez une exposition permanente :</p>

    <input type="checkbox" id="" name="BDD"
           checked>
    <label for="">bdd</label>
</div>

<div class="m-3">
        <input type="checkbox" id="horns" name="bdd">
        <label for="">bdd</label>
    </div>
    </br>
    </br>

<div class="m-3">
<p>Selectionnez une exposition éphémère :</p>

    <div>
        <input type="checkbox" id="" name="BDD"
               checked>
        <label for="">bdd</label>
    </div>
    <div class="m-3">
        <input type="checkbox" id="horns" name="bdd">
        <label for="">bdd</label>


    </br>
    </br>
        <div class="m-0">
        <label for="ticketNum">Nombre de tickets Adulte :</label>
    <input id="ticketNum" type="number" name="ticketNum" value="0">
</div>
</br>
    <label for="ticketNum">Nombre de tickets Enfant :</label>
    <input id="ticketNum" type="number" name="ticketNum" value="0">
    </br>
    </br>
        </div>
    <button type="button" class="btn btn-primary">Calculer</button>
    <div class="input-group mb-3">
        <span class="input-group-text">€</span>
        <span class="input-group-text">0.00</span>

    </div>
        <button type="button" class="btn btn-primary">Valider</button>

</body>
</html>