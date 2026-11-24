# Invitaciones

Plantillas de invitaciones web (bodas y otros eventos). Cada plantilla es una carpeta independiente en `plantillas/` con datos de muestra ficticios.

| Plantilla | Evento | Estilo |
|---|---|---|
| `boda-sobre-sello` | Boda | Sobre con sello, hortensias, ES/CA/EN, modo oscuro |

## Crear una invitación nueva

```
./nueva.sh boda-sobre-sello boda-ana-y-luis
```

Crea `../boda-ana-y-luis` como repo aparte. **Los datos reales (nombres, IBAN, teléfono, fotos, endpoint) viven solo en ese repo, nunca aquí.**

## Añadir una plantilla nueva

1. Crea `plantillas/<evento>-<estilo>/` (por ejemplo `bautizo-nubes`), autocontenida: su `index.html`, estilos, `shared/config.js` e imágenes.
2. Usa solo datos ficticios y fotos sin personas reconocibles.
3. Añade una fila a la tabla y un README corto dentro de la carpeta.

Cuando dos plantillas repitan código (formulario, idiomas, tema), se extrae a una carpeta común; no antes.
