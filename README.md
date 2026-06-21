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

## 🐳 Despliegue con Docker y Caddy (HTTPS Automático)

El proyecto incluye la infraestructura necesaria para ser desplegado en producción utilizando Docker y Caddy, lo que garantiza la generación automática de certificados SSL para el dominio `nh.zetastormy.me`.

### Requisitos Previos
- Tener Docker y Docker Compose instalados en el servidor anfitrión.
- Asegurarse de que el registro DNS (tipo A o CNAME) para `nh.zetastormy.me` esté apuntando a la IP de tu servidor.

### Pasos para Desplegar

1. Clona este repositorio en tu servidor.
2. Posiciónate en la raíz del proyecto.
3. Construye y levanta los contenedores en segundo plano:
   ```bash
   docker-compose up -d --build
   ```

Caddy se encargará automáticamente de validar tu dominio ante Let's Encrypt, obtener el certificado SSL y servir la versión estática y optimizada del sitio de manera inmediata en `https://nh.zetastormy.me`.
