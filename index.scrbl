#!/usr/bin/env racket

#lang scribble/html

@(define site-name "Iomete Labs")

@(define (stylesheet s)
 @link[rel: "stylesheet" href: s])

@(define styles
 @(stylesheet "/index.css"))

@(define (center content)
 @div[class: "center-vertical max-page"]{
  @div[class: "center-horizontal"]{
   @content}})

@(define logo "/logo.png")

@(define content
 @(center
  @a[href: "mailto:alex@iometelabs.io"]{
   @img[src: @logo class: "img-medium"]}))

@html[lang: "en"]{
 @head{
  @title{@site-name}
  @meta[name: "viewport" content:
   "width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"]
  @styles}

 @body{@content}}
