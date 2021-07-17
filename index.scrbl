#!/usr/bin/env racket

#lang scribble/html

@define[site-name]{Iomete Labs}
@define[site-url]{https://iometelabs.io}

@define[(stylesheet s)]{
 @link[rel: "stylesheet" href: s]}

@define[styles]{
 @stylesheet{/index.css}}

@define[logo]{/logo.png}

@define[content]{
 @div[class: "center-vertical max-page"]{
  @div[class: "center-horizontal"]{
   @a[href: "mailto:alex@iometelabs.io"]{
    @img[src: @logo class: "img-medium"]}}}}

@(define site-desc "
 We're developing zero knowledge proof technologies for blockchain
 systems so the world can become simpler, more private and more
 decentralised.")

@html[lang: "en"]{
 @head{
  @title{@site-name}
  @meta[name: "viewport" content:
   "width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"]
  @meta[property: "og:title" content: site-name]
  @meta[property: "og:url" content: site-url]
  @meta[property: "og:image" content: @(format "~a/logo.png" site-url)]
  @meta[property: "og:description" content: site-desc]
  @styles}

 @body{@content}}
