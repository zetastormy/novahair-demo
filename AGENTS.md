# Directrices del Proyecto - Demo NovaHair

## 1. Arquitectura y Stack
- **Framework:** Astro (última versión).
- **Package Manager & Runtime:** Usar estrictamente `bun`. Todas las instalaciones de dependencias, ejecución de scripts (`bun run dev`, `bun run build`) y comandos deben hacerse con Bun. Queda estrictamente prohibido usar `npm`, `yarn` o `pnpm`.
- **Enfoque:** Zero-JS por defecto.
- **Estrategia de Diseño:** Mobile-First estricto. El diseño base debe apuntar a resoluciones móviles (ancho máximo 768px). Escalar a Tablet (768px - 1024px) y Desktop (> 1024px) usando media queries.

## 2. Sistema de Diseño (Look & Feel)
**Colores Principales (Variables CSS globales):**
- `--color-black`: #000000 (Textos principales, barras de navegación)
- `--color-dark-gray`: #1A1A1A
- `--color-white`: #FFFFFF (Fondo general)
- `--color-light-gray`: #F5F5F5 (Fondos de formularios)
- `--color-pink-primary`: #FF4081 (Botones CTA principales)
- `--color-pink-secondary`: #E91E63 (Estados activos)
- `--color-accent-blue`: #5C6BC0 (Enlaces secundarios)
- `--color-gold`: #FFC107 (Testimonios y validación)

**Tipografía:**
- **Encabezados (H1, H2, H3) y CTAs:** Montserrat o Poppins (Sans-Serif geométrica). Usar pesos Bold o SemiBold.
- **Cuerpo de texto y Formularios:** Open Sans o Roboto.

## 3. Reglas de Interfaz y Accesibilidad (HCI)
- **Navegación Móvil:** En vistas móviles, implementar una barra de navegación inferior fija (Bottom Nav).
- **Ley de Fitts:** Todo elemento interactivo (botones, enlaces) debe tener un área táctil mínima de 48x48 píxeles.
- **Accesibilidad Visual:** Priorizar alto contraste (texto oscuro sobre fondos claros, texto blanco sobre botones oscuros).
- **Accesibilidad Técnica:** Usar etiquetas de accesibilidad (`aria-labels`, `alt` en imágenes) y mantener una jerarquía de encabezados lógica para lectores de pantalla.

## 4. UX Writing y Comportamiento UI
- **Tono de voz:** Médico-empático, conversacional y transparente.
- **Componentes de Texto Denso:** Usar el patrón de "Revelación Progresiva" (Acordeones/Tabs) para información extensa.
- **Imágenes:** Usar placeholders para fotografías reales. No sugerir el uso de imágenes de stock genéricas.

## 5. Control de Versiones
- **Git:** Asegurar que exista un archivo `.gitignore` en la raíz. Además de los estándares de Astro y Node (`node_modules`, `dist`, `.env`), debe estar preparado para excluir carpetas de construcción de contenedores Docker y configuraciones locales de Nginx, manteniendo visibles los archivos `.yml` para los pipelines de GitHub Actions.

## 6. Flujo de Git y Commits
- **Convención de Mensajes:** Cuando el usuario solicite la redacción de un mensaje de commit, el agente debe usar estrictamente el estándar de Conventional Commits (ej. `feat: añade componente Hero móvil`, `style: configura variables CSS globales`).
- **Atomicidad:** Los cambios deben planearse para ser atómicos (un commit por componente o característica visual de los wireframes).

## Regla Maestra
- **Documento de Solo Lectura:** El agente tiene estrictamente prohibido editar, eliminar o sobrescribir este archivo `AGENTS.md`. Solo debe leerlo como contexto global.