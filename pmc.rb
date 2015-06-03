#!/usr/bin/ruby

## get data from europepmc 

require 'rest-client'
RestClient.get 'http://example.com/resource', {:params => {:id => 50, 'foo' => 'bar'}}
'http://www.ebi.ac.uk/europepmc/webservices/rest/search/', {:params => {:AUTHORID => "0000-0001-9755-1703"}}

## write header for pmc.org

#+TITLE: Chris Wallace: publications
#+SETUPFILE: ./setup3.org
#+INCLUDE: ./nav2.org
** Published
** Preprints
