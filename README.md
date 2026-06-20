# NovaHair - Medicina Estética Capilar

Este es el repositorio para la página web de la clínica capilar **NovaHair**, desarrollada con un enfoque estricto en el rendimiento, accesibilidad y diseño Mobile-First.

## 🚀 Tecnologías y Arquitectura

- **Framework:** [Astro](https://astro.build)
- **Runtime & Package Manager:** [Bun](https://bun.sh)
- **Estilos:** Vanilla CSS (Zero-JS por defecto)
- **Iconografía:** `lucide-astro` y `simple-icons`

## 📦 Inicialización Local

Asegúrate de tener **Bun** instalado en tu sistema antes de continuar. Está estrictamente prohibido el uso de `npm`, `yarn` o `pnpm` para la gestión de este proyecto.

1. Instala las dependencias:
   ```bash
   bun install
   ```

2. Inicia el servidor de desarrollo:
   ```bash
   bun run dev
   ```

El proyecto estará disponible en `http://localhost:4321`.

## 🛠 Comandos Disponibles

Todos los comandos se ejecutan mediante Bun:

| Comando | Acción |
| :--- | :--- |
| `bun run dev` | Inicia el servidor de desarrollo local en `localhost:4321`. |
| `bun run build` | Compila el sitio de producción en el directorio `dist/`. |
| `bun run preview` | Previsualiza la compilación localmente. |

## 🎨 Principios de Diseño

El proyecto sigue estrictamente el manifiesto delineado en `AGENTS.md`:
- **Mobile-First**: La estructura base se diseña pensando en móvil (hasta 768px), escalando progresivamente hacia resoluciones superiores (Tablet, Desktop) mediante media queries fluidas.
- **Ley de Fitts**: Todos los elementos interactivos cuentan con un área táctil mínima de 48x48px.
- **Accesibilidad Visual**: Contraste optimizado con la paleta de colores base de NovaHair (Rosa primario, gris oscuro, blanco, dorado).
- **Semántica**: Estructura de HTML enfocada en la lectura accesible.
