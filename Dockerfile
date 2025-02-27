FROM node:22-alpine AS builder
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine AS runner
WORKDIR /usr/share/nginx/html
COPY --from=builder /app/dist .
