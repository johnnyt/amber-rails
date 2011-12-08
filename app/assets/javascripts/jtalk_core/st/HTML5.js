smalltalk.addClass('LocalStorage', smalltalk.Object, [], 'HTML5');

smalltalk.addMethod(
'_keys',
smalltalk.method({
selector: 'keys',
category: 'not yet classified',
fn: function (){
var self=this;
var numKeys=nil;
var key=nil;
var keysArray=nil;
numKeys=localStorage.length-1;
keysArray=smalltalk.send(smalltalk.Array, "_new", []);
smalltalk.send((0), "_to_do_", [numKeys, (function(idx){key=localStorage.key(idx);return smalltalk.send(keysArray, "_add_", [key]);})]);
return keysArray;
return self;},
source: unescape('keys%0A%0A%09%7C%20numKeys%20key%20keysArray%20%7C%0A%09numKeys%20%3A%3D%20%3ClocalStorage.length-1%3E.%0A%09keysArray%20%3A%3D%20Array%20new.%0A%090%20to%3A%20numKeys%20do%3A%20%5B%20%3Aidx%20%7C%0A%09%09key%20%3A%3D%20%3ClocalStorage.key%28idx%29%3E.%0A%09%09keysArray%20add%3A%20key%20%5D.%0A%09%5E%20keysArray.'),
messageSends: ["new", "to:do:", "add:"],
referencedClasses: [smalltalk.Array]
}),
smalltalk.LocalStorage.klass);

smalltalk.addMethod(
'_at_',
smalltalk.method({
selector: 'at:',
category: 'not yet classified',
fn: function (keyName){
var self=this;
return localStorage[keyName];
return self;},
source: unescape('at%3A%20keyName%0A%0A%09%5E%3ClocalStorage%5BkeyName%5D%3E'),
messageSends: [],
referencedClasses: []
}),
smalltalk.LocalStorage.klass);

smalltalk.addMethod(
'_at_put_',
smalltalk.method({
selector: 'at:put:',
category: 'not yet classified',
fn: function (keyName, stringValue){
var self=this;
localStorage[keyName] = stringValue;
return self;},
source: unescape('at%3A%20keyName%20put%3A%20stringValue%0A%0A%09%3ClocalStorage%5BkeyName%5D%20%3D%20stringValue%3E'),
messageSends: [],
referencedClasses: []
}),
smalltalk.LocalStorage.klass);


