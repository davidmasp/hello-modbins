#!/usr/bin/env nextflow

nextflow.enable.moduleBinaries = true

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world!'
    """
}

include { sayHello2 } from './modules/base'

workflow {
  Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
  Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello2 | view
}
