development support
lookupColorStringMap
	| map thElements |
	map := Dictionary new.
	thElements := ('http://sub-atomic.com/~moses/acadcolors.html' asZnUrl retrieveContents parseHTML
		allNodesSelect: [ :e | e name = 'th' ]) allButFirst: 9.
	thElements do: [ :th | map at: th contentString put: (th attributeAt: 'bgcolor') ].
	^ map