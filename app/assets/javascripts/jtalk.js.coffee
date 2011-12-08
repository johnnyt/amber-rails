#= require jquery
#= require jquery.ui
#= require jquery.textarea
#= require jtalk_core/boot
#= require jtalk_core/st/Kernel
#= require jtalk_core/st/Canvas
#= require jtalk_core/st/JQuery
#= require jtalk_core/st/Parser
#= require jtalk_core/st/Compiler
#= require jtalk_core/st/Examples
#= require jtalk_core/st/Benchfib

$ ->
  smalltalk.init smalltalk.Object
  smalltalk.classes()._do_ (each) ->
    each._initialize()
