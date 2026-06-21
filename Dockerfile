# Etapa 1: Construcción
FROM oven/bun:1 AS builder

# Configurar directorio de trabajo
WORKDIR /app

# Copiar archivos de dependencias
COPY package.json bun.lock ./

# Instalar dependencias con bun
RUN bun install

# Copiar el resto del código fuente
COPY . .

# Construir el sitio estático
RUN bun run build

# Etapa 2: Servidor de Producción (Caddy)
FROM caddy:2-alpine

# Copiar configuración de Caddy
COPY Caddyfile /etc/caddy/Caddyfile

# Copiar los archivos construidos estáticos desde la etapa builder
COPY --from=builder /app/dist /srv

# Exponer puertos necesarios para HTTP y HTTPS
EXPOSE 80 443
