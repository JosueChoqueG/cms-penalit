<?php

use Illuminate\Support\Facades\Route;

// Rutas estáticas de vistas Statamic
Route::statamic('nosotros', 'pages.nosotros', [
    'title' => '¿Quiénes Somos?'
]);

Route::statamic('capacitacion', 'pages.capacitacion', [
    'title' => 'Capacitaciones y Programas Académicos'
]);

Route::statamic('congresos', 'pages.capacitacion', [
    'title' => 'Congresos Regionales y Nacionales'
]);

Route::statamic('diplomados', 'pages.capacitacion', [
    'title' => 'Diplomados de Alta Especialización'
]);

Route::statamic('cursos', 'pages.capacitacion', [
    'title' => 'Cursos de Especialización'
]);

Route::statamic('inscripcion', 'pages.inscripcion', [
    'title' => 'Inscripción en Línea'
]);

Route::statamic('verificador', 'pages.verificador', [
    'title' => 'Verificador de Certificados'
]);

Route::statamic('libros', 'pages.libros', [
    'title' => 'Biblioteca Jurídica Digital'
]);

Route::statamic('contacto', 'pages.contacto', [
    'title' => 'Contacto e Informes'
]);

Route::statamic('blog', 'blog.index', [
    'title' => 'Blog y Publicaciones Jurídicas'
]);
