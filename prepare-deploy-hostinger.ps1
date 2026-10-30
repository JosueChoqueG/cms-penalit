# ==============================================================
# Script para empaquetar el proyecto para Hostinger
# ==============================================================
Write-Host "1. Limpiando cachés locales..." -ForegroundColor Cyan
php artisan config:clear
php artisan route:clear
php artisan view:clear

Write-Host "2. Compilando assets de producción con Vite..." -ForegroundColor Cyan
npm run build

Write-Host "3. Creando archivo zip para Hostinger (deploy-hostinger.zip)..." -ForegroundColor Cyan
$zipFile = "deploy-hostinger.zip"
if (Test-Path $zipFile) {
    Remove-Item $zipFile -Force
}

# Elementos a incluir
$items = @(
    "app",
    "bootstrap",
    "config",
    "content",
    "database",
    "public",
    "resources",
    "routes",
    "storage",
    "users",
    "vendor",
    ".htaccess",
    ".env.production.example",
    "artisan",
    "composer.json",
    "composer.lock"
)

# Empaquetar excluyendo logs y cachés temporales
Compress-Archive -Path $items -DestinationPath $zipFile -CompressionLevel Optimal

Write-Host "✅ Paquete generado con éxito: $zipFile" -ForegroundColor Green
Write-Host "Puedes subir este archivo directamente al Administrador de Archivos de Hostinger y descomprimirlo." -ForegroundColor Yellow

