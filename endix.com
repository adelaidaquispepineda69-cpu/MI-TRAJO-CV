Aquí está el código completo. Cópialo en un archivo llamado `cv.html` y ábrelo en tu navegador:

```html
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CV – Tu Nombre</title>
<style>
  :root {
    --tinta: #1f2a33;
    --suave: #5b6770;
    --linea: #d6dde2;
    --acento: #1d5c7a;
    --fondo: #ffffff;
    --pagina: #eef2f4;
  }
  * { box-sizing: border-box; }
  html, body { margin: 0; }
  body {
    background: var(--pagina);
    color: var(--tinta);
    font-family: "Segoe UI", Roboto, Arial, sans-serif;
    line-height: 1.5;
    padding: 2rem 1rem;
  }
  .cv {
    max-width: 820px;
    margin: 0 auto;
    background: var(--fondo);
    padding: 3rem 3.25rem;
    display: grid;
    grid-template-columns: 1fr 230px;
    column-gap: 2.5rem;
  }
  header { grid-column: 1 / -1; border-bottom: 3px solid var(--acento); padding-bottom: 1.25rem; margin-bottom: 1.75rem; }
  h1 { font-family: Georgia, "Times New Roman", serif; font-size: 2.4rem; margin: 0; }
  .puesto { color: var(--acento); font-size: 1.15rem; margin: .25rem 0 0; font-weight: 600; }
  h2 { font-family: Georgia, serif; font-size: 1.1rem; margin: 0 0 .75rem; color: var(--acento); }
  section { margin-bottom: 1.75rem; }
  .item { margin-bottom: 1.1rem; }
  .item h3 { font-size: 1rem; margin: 0; }
  .meta { color: var(--suave); font-size: .9rem; margin: 0 0 .3rem; }
  ul { margin: .25rem 0 0; padding-left: 1.1rem; }
  li { margin-bottom: .2rem; }
  aside ul { list-style: none; padding: 0; }
  aside li { padding: .3rem 0; border-bottom: 1px solid var(--linea); font-size: .95rem; }
  aside li:last-child { border-bottom: 0; }
  @media (max-width: 680px) {
    .cv { grid-template-columns: 1fr; padding: 1.75rem 1.25rem; }
  }
  @media print {
    body { background: #fff; padding: 0; }
    .cv { max-width: none; padding: 0; }
    @page { margin: 1.5cm; }
  }
</style>
</head>
<body>
<article class="cv">

  <header>
    <h1>Tu Nombre Completo</h1>
    <p class="puesto">Puesto al que postulas</p>
  </header>

  <main>
    <section>
      <h2>Perfil</h2>
      <p>Resumen breve de 2 o 3 líneas: quién eres, cuántos años de experiencia tienes y qué puedes aportar a la empresa.</p>
    </section>

    <section>
      <h2>Experiencia laboral</h2>
      <div class="item">
        <h3>Cargo – Empresa</h3>
        <p class="meta">Mes AAAA – Mes AAAA · Ciudad</p>
        <ul>
          <li>Logro o responsabilidad principal, con un resultado concreto.</li>
          <li>Otra tarea importante que realizabas.</li>
        </ul>
      </div>
      <div class="item">
        <h3>Cargo – Empresa</h3>
        <p class="meta">Mes AAAA – Mes AAAA · Ciudad</p>
        <ul>
          <li>Logro o responsabilidad principal.</li>
        </ul>
      </div>
    </section>

    <section>
      <h2>Formación</h2>
      <div class="item">
        <h3>Carrera o título – Institución</h3>
        <p class="meta">AAAA – AAAA</p>
      </div>
    </section>
  </main>

  <aside>
    <section>
      <h2>Contacto</h2>
      <ul>
        <li>correo@ejemplo.com</li>
        <li>+51 999 999 999</li>
        <li>Lima, Perú</li>
      </ul>
    </section>
    <section>
      <h2>Habilidades</h2>
      <ul>
        <li>Habilidad 1</li>
        <li>Habilidad 2</li>
        <li>Habilidad 3</li>
      </ul>
    </section>
    <section>
      <h2>Idiomas</h2>
      <ul>
        <li>Español – nativo</li>
        <li>Inglés – intermedio</li>
      </ul>
    </section>
  </aside>

</article>
</body>
</html>
```

Para cambiar el color a morado, modifica `--acento: #1d5c7a;` por `--acento: #6b3fa0;`. Cambia también los textos de ejemplo por tus datos, o pásamelos y te lo devuelvo ya completo.
