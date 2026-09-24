# My Portfolio

Personal site for Chris Emmanuel Catipay — web designer and automations
specialist. One hand-written `index.html`: no build step, no framework,
no dependencies.

## Preview locally

Run `preview.cmd` (double-click on Windows). It serves the folder on
<http://localhost:5500/> and opens a browser. Close the window to stop.

Or, with Python on the PATH:

```
python -m http.server 5500
```

## Deploy

`dist/` holds exactly the files the live site needs. To publish an
update, open the site's **Deploys** tab on Netlify and drag `dist/`
onto the drop zone. Dropping it on `netlify.com/drop` instead would
create a *new* site with a new URL.

After editing `index.html`, copy it across before deploying:

```
cp index.html dist/index.html
```

## Layout

| Path | What it is |
| --- | --- |
| `index.html` | The whole site — markup, styles and scripts |
| `work/` | Project images for Selected work |
| `beyond/` | Photos for the Beyond design section |
| `logos/` | Company and tool marks |
| `dist/` | The deployable copy |
| `preview.cmd` | Local preview server |

Raw design sources — mockups, client art and reference screenshots —
stay out of the repo; see `.gitignore`.
