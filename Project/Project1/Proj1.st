<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10 of July 10, 2013 on March 3, 2014 at 11:18:43 PM</time-stamp>


<component-created>
<name>Proj1</name> <type>package</type>
</component-created><!-- Package Proj1* -->


<component-created>
<name>Proj1</name> <type>package</type>
</component-created>

<class>
<name>CALC</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>BST1 BST2 Input1 Input2 Input3 Set2 Set1 </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Proj1</package>
</attributes>
</class>

<class>
<name>Tree</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>root </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Proj1</package>
</attributes>
</class>

<class>
<name>Struct</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>value left right </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Proj1</package>
</attributes>
</class>

<methods>
<class-id>Tree class</class-id> <category>instance creation</category>

<body package="Proj1" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Tree</class-id> <category>op</category>

<body package="Proj1" selector="Intersection:">Intersection: otherTree		"This method is to save the same values from two sets"</body>

<body package="Proj1" selector="printSub:">printSub: node	|leftNode rightNode|	node == nil		ifTrue: [^' ']		ifFalse: [ leftNode := self printSub: node left.				  rightNode := self printSub: node right.				^(leftNode, node value printString, rightNode)]</body>

<body package="Proj1" selector="SubUnion:">SubUnion: node				"This is the helping method for the union"	self Insert: (node value).	node left == nil		ifFalse: [ self SubUnion: node left].	node right == nil		ifFalse: [self SubUnion: node right].</body>

<body package="Proj1" selector="Clear">Clear		"This method is to clear everything in the tree"		root := nil.</body>

<body package="Proj1" selector="print">print		"print the values of the trees"	| values |	self root == nil		ifFalse: [values := self printSub: root].	^values</body>

<body package="Proj1" selector="Save:">Save: otherTree		"This method is to copy everything from the first set into the second set"	otherTree root: nil.	otherTree root copy self root.</body>

<body package="Proj1" selector="Switch:">Switch: otherTree	"This method is to swtich two different"	| tempTree |	tempTree  := otherTree.	otherTree root: self root.	self root: tempTree root.</body>

<body package="Proj1" selector="Insert:">Insert: x		"add a new node with value x into the tree"		| node current previous |		node := Struct new.		node value: x.		current := nil.		previous := nil.		self root == nil			ifTrue: [self root: node]			ifFalse: [ current := self root.					  previous := current.						[current == nil]							whileFalse:								[x = current value									ifTrue: [previous := nil.											current := nil]									ifFalse: [ x &lt; current value												ifTrue: [previous := current.														current := current left]												ifFalse: [x &gt; current value														ifTrue: [previous := current.														current := current right]														]											]								]					previous == nil						ifTrue: [nil]						IfFalse: [x &lt; previous value								ifTrue: [previous left: node].								x &gt; previous value								ifTrue: [previous right: node]								]					]</body>

<body package="Proj1" selector="Union:">Union: otherTree			"This method is to add up the different values from two tree and put them into the first tree"	otherTree root == nil			ifFalse: [ self SubUnion: (otherTree root)]</body>
</methods>

<methods>
<class-id>Tree</class-id> <category>accessing</category>

<body package="Proj1" selector="root:">root: anObject	root := anObject</body>

<body package="Proj1" selector="root">root	^root</body>
</methods>

<methods>
<class-id>Tree</class-id> <category>copying</category>

<body package="Proj1" selector="postCopy">postCopy	self left notNil ifTrue: [self left: self left copy].	self right notNil ifTrue: [self right: self right copy].^self</body>
</methods>

<methods>
<class-id>Tree</class-id> <category>initialize-release</category>

<body package="Proj1" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	root := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Struct class</class-id> <category>instance creation</category>

<body package="Proj1" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Struct</class-id> <category>initialize-release</category>

<body package="Proj1" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	value := nil.	left := nil.	right := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>

<methods>
<class-id>Struct</class-id> <category>accessing</category>

<body package="Proj1" selector="right:">right: anObject	right := anObject</body>

<body package="Proj1" selector="value:">value: anObject	value := anObject</body>

<body package="Proj1" selector="left:">left: anObject	left := anObject</body>

<body package="Proj1" selector="value">value	^value</body>

<body package="Proj1" selector="right">right	^right</body>

<body package="Proj1" selector="left">left	^left</body>
</methods>


<methods>
<class-id>CALC class</class-id> <category>interface specs</category>

<body package="Proj1" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'Calculator' 			#bounds: #(#{Graphics.Rectangle} 583 264 783 464 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 10 306 91 330 ) 					#name: #ActionButton1 					#model: #Clear 					#label: 'Clear' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 101 307 182 330 ) 					#name: #ActionButton2 					#model: #Switch 					#label: 'Switch' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 193 307 274 330 ) 					#name: #ActionButton3 					#model: #Save 					#label: 'Save' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 283 308 364 331 ) 					#name: #ActionButton4 					#model: #Display 					#label: 'Display' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 12 236 93 259 ) 					#name: #ActionButton5 					#model: #Add 					#label: 'Add' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 318 235 399 258 ) 					#name: #ActionButton6 					#model: #Remove 					#label: 'Remove' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 371 308 452 331 ) 					#name: #ActionButton7 					#model: #Union 					#label: 'Union' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 467 309 548 332 ) 					#name: #ActionButton8 					#model: #Intersection 					#label: 'Intersection' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 10 368 91 391 ) 					#name: #ActionButton9 					#model: #Transform 					#label: 'Transform' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 118 236 218 259 ) 					#name: #InputField1 					#model: #Input1 					#type: #number 					#formatString: '#,##0' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 417 236 517 260 ) 					#name: #InputField2 					#model: #Input2 					#type: #number 					#formatString: '#,##0' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 115 369 488 396 ) 					#name: #InputField3 					#model: #Input3 ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 19 66 272 165 ) 					#name: #List1 					#model: #Set1 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 297 66 537 166 ) 					#name: #List2 					#model: #Set2 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 101 29 ) 					#name: #Label1 					#label: 'Set1' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 385 34 ) 					#name: #Label2 					#label: 'Set2' ) ) ) )</body>
</methods>


<methods>
<class-id>CALC</class-id> <category>aspects</category>

<body package="Proj1" selector="Input2">Input2	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^Input2 isNil		ifTrue:			[Input2 := 0 asValue]		ifFalse:			[Input2]</body>

<body package="Proj1" selector="Input3">Input3	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^Input3 isNil		ifTrue:			[Input3 := String new asValue]		ifFalse:			[Input3]</body>

<body package="Proj1" selector="Input1">Input1	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^Input1 isNil		ifTrue:			[Input1 := 0 asValue]		ifFalse:			[Input1]</body>

<body package="Proj1" selector="Set1">Set1	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^Set1 isNil		ifTrue:			[Set1 := SelectionInList new]		ifFalse:			[Set1]</body>

<body package="Proj1" selector="Set2">Set2	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^Set2 isNil		ifTrue:			[Set2 := SelectionInList new]		ifFalse:			[Set2]</body>
</methods>

<methods>
<class-id>CALC</class-id> <category>actions</category>

<body package="Proj1" selector="Union">Union	"This stub method was generated by UIDefiner"	BST1 Union: BST2.	Set1 := BST1 print.	^self</body>

<body package="Proj1" selector="Clear">Clear	"This stub method was generated by UIDefiner"	BST1 Clear.	Set1 := BST1 print.	^self</body>

<body package="Proj1" selector="Add">Add	"This stub method was generated by UIDefiner"	| x |	x := Input1 value.	BST1 Insert: x.	Set1 := BST1 print.	^self</body>

<body package="Proj1" selector="Intersection">Intersection	"This stub method was generated by UIDefiner"	^self</body>

<body package="Proj1" selector="Display">Display	"This stub method was generated by UIDefiner"	Set1 := BST1 print.	Set2 := BST2 print.	^self</body>

<body package="Proj1" selector="Transform">Transform	"This stub method was generated by UIDefiner"	^self</body>

<body package="Proj1" selector="Switch">Switch	"This stub method was generated by UIDefiner"	BST1 Switch: BST2.	Set1 := BST1 print.	Set2 := BST2 print.	^self</body>

<body package="Proj1" selector="Remove">Remove	"This stub method was generated by UIDefiner"	^self</body>

<body package="Proj1" selector="Save">Save	"This stub method was generated by UIDefiner"	BST1 Save: BST2.	Set1 := BST1 print.	Set2 := BST2 print.	^self</body>
</methods>

<methods>
<class-id>CALC</class-id> <category>initialize-release</category>

<body package="Proj1" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	BST1 := Tree new.	BST2 := Tree new.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>



</st-source>
