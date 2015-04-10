<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10 of July 10, 2013 on March 21, 2014 at 3:33:41 PM</time-stamp>


<component-created>
<name>proj2</name> <type>package</type>
</component-created><!-- Package proj2* -->


<component-created>
<name>proj2</name> <type>package</type>
</component-created>

<class>
<name>Beverage</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name calory price </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>proj2</package>
</attributes>
</class>

<class>
<name>Food</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name ingredient price calory </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>proj2</package>
</attributes>
</class>

<class>
<name>Appetizer</name>
<environment>Smalltalk</environment>
<super>Food</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>proj2</package>
</attributes>
</class>

<class>
<name>Dish</name>
<environment>Smalltalk</environment>
<super>Food</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>dish </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>proj2</package>
</attributes>
</class>

<class>
<name>Dessert</name>
<environment>Smalltalk</environment>
<super>Food</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>description </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>proj2</package>
</attributes>
</class>

<class>
<name>Soda</name>
<environment>Smalltalk</environment>
<super>Beverage</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>proj2</package>
</attributes>
</class>

<class>
<name>Drink</name>
<environment>Smalltalk</environment>
<super>Beverage</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ingredient </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>proj2</package>
</attributes>
</class>

<class>
<name>M</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>f d name Input F_name Food_In F_dish F_price A_name A_In A_price A_calory D_name D_price D_calory D_dish D_in DS_name DS_price DS_calory DS_discription S_name S_price S_calory DK_name DK_price DK_in Save_list Client_screen e DK_calory </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>proj2</package>
</attributes>
</class>

<methods>
<class-id>Food class</class-id> <category>instance creation</category>

<body package="proj2" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Food</class-id> <category>accessing</category>

<body package="proj2" selector="price:">price: anObject	price := anObject</body>

<body package="proj2" selector="ingredient">ingredient	^ingredient</body>

<body package="proj2" selector="calory">calory	^calory</body>

<body package="proj2" selector="price">price	^price</body>

<body package="proj2" selector="name:">name: anObject	name := anObject</body>

<body package="proj2" selector="name">name	^name</body>

<body package="proj2" selector="calory:">calory: anObject	calory := anObject</body>

<body package="proj2" selector="ingredient:">ingredient: anObject	ingredient := anObject</body>
</methods>

<methods>
<class-id>Food</class-id> <category>initialize-release</category>

<body package="proj2" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	name := nil.	ingredient := nil.	price := nil.	calory := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Beverage class</class-id> <category>instance creation</category>

<body package="proj2" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Beverage</class-id> <category>accessing</category>

<body package="proj2" selector="calory">calory	^calory</body>

<body package="proj2" selector="price">price	^price</body>

<body package="proj2" selector="name:">name: anObject	name := anObject</body>

<body package="proj2" selector="name">name	^name</body>

<body package="proj2" selector="price:">price: anObject	price := anObject</body>

<body package="proj2" selector="calory:">calory: anObject	calory := anObject</body>
</methods>

<methods>
<class-id>Beverage</class-id> <category>initialize-release</category>

<body package="proj2" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	name := nil.	calory := nil.	price := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Appetizer</class-id> <category>initialize-release</category>

<body package="proj2" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Dish</class-id> <category>accessing</category>

<body package="proj2" selector="dish">dish	^dish</body>

<body package="proj2" selector="dish:">dish: anObject	dish := anObject</body>
</methods>

<methods>
<class-id>Dish</class-id> <category>initialize-release</category>

<body package="proj2" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	dish := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Dessert</class-id> <category>accessing</category>

<body package="proj2" selector="description">description	^description</body>

<body package="proj2" selector="description:">description: anObject	description := anObject</body>
</methods>

<methods>
<class-id>Dessert</class-id> <category>initialize-release</category>

<body package="proj2" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	description := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Soda</class-id> <category>initialize-release</category>

<body package="proj2" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Drink</class-id> <category>accessing</category>

<body package="proj2" selector="ingredient">ingredient	^ingredient</body>

<body package="proj2" selector="ingredient:">ingredient: anObject	ingredient := anObject</body>
</methods>

<methods>
<class-id>Drink</class-id> <category>initialize-release</category>

<body package="proj2" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	ingredient := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>M class</class-id> <category>interface specs</category>

<body package="proj2" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'Menu' 			#bounds: #(#{Graphics.Rectangle} 583 31 783 231 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 2 3 116 28 ) 					#name: #ActionButton1 					#model: #Create_List 					#label: 'Create_List' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 119 3 235 30 ) 					#name: #ActionButton2 					#model: #Add_Entry_List 					#label: 'Add_Entry_List' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 240 3 363 30 ) 					#name: #ActionButton3 					#model: #Remove_Entry_List 					#label: 'Remove_Entry_List' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 365 3 488 31 ) 					#name: #ActionButton4 					#model: #Save_List 					#label: 'Save_List' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 2 34 116 61 ) 					#name: #ActionButton5 					#model: #Retrieve_List 					#label: 'Retrieve_List' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 120 34 237 61 ) 					#name: #ActionButton6 					#model: #Suggest_Full 					#label: 'Suggest_Full' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 243 36 363 62 ) 					#name: #ActionButton7 					#model: #Suggest_Light 					#label: 'Suggest_Light' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 62 92 162 116 ) 					#name: #InputField1 					#model: #A_name ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 13 94 ) 					#name: #Label1 					#label: 'A_name' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 61 181 185 237 ) 					#name: #InputField2 					#model: #A_In ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 15 184 ) 					#name: #Label2 					#label: 'A_in' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 62 122 162 146 ) 					#name: #InputField3 					#model: #A_price ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 13 124 ) 					#name: #Label3 					#label: 'A_price' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 61 151 161 174 ) 					#name: #InputField4 					#model: #A_calory ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 14 154 ) 					#name: #Label4 					#label: 'A_calory' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 283 91 383 114 ) 					#name: #InputField5 					#model: #D_name ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 229 93 ) 					#name: #Label5 					#label: 'D_name' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 284 121 384 144 ) 					#name: #InputField6 					#model: #D_price ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 228 120 ) 					#name: #Label6 					#label: 'D_price' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 284 150 384 173 ) 					#name: #InputField7 					#model: #D_calory ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 227 148 ) 					#name: #Label7 					#label: 'D_calory' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 283 180 383 203 ) 					#name: #InputField8 					#model: #D_dish ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 227 180 ) 					#name: #Label8 					#label: 'D_dish' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 283 215 427 303 ) 					#name: #InputField9 					#model: #D_in ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 229 215 ) 					#name: #Label9 					#label: 'D_in' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 523 91 623 114 ) 					#name: #InputField10 					#model: #DS_name ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 464 93 ) 					#name: #Label10 					#label: 'DS_name' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 523 122 623 145 ) 					#name: #InputField11 					#model: #DS_price ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 463 124 ) 					#name: #Label11 					#label: 'DS_price' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 523 152 623 175 ) 					#name: #InputField12 					#model: #DS_calory ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 463 152 ) 					#name: #Label12 					#label: 'DS_calory' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 523 188 661 299 ) 					#name: #InputField13 					#model: #DS_discription ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 463 186 ) 					#name: #Label13 					#label: 'DS_Dscip' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 72 344 172 367 ) 					#name: #InputField14 					#model: #S_name ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 72 378 172 401 ) 					#name: #InputField15 					#model: #S_price ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 72 413 172 436 ) 					#name: #InputField16 					#model: #S_calory ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 10 343 ) 					#name: #Label14 					#label: 'S_name' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 10 380 ) 					#name: #Label15 					#label: 'S_price' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 8 414 ) 					#name: #Label16 					#label: 'S_calory' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 283 332 383 355 ) 					#name: #InputField17 					#model: #DK_name ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 226 332 ) 					#name: #Label17 					#label: 'DK_name' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 283 361 383 384 ) 					#name: #InputField18 					#model: #DK_price ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 224 360 ) 					#name: #Label18 					#label: 'DK_price' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 283 391 383 414 ) 					#name: #InputField19 					#model: #DK_calory ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 224 388 ) 					#name: #Label19 					#label: 'DK_calory' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 283 423 413 507 ) 					#name: #InputField20 					#model: #DK_in ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 224 425 ) 					#name: #Label20 					#label: 'DK_in' ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 520 358 760 519 ) 					#name: #List1 					#model: #Save_list 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 613 330 ) 					#name: #Label21 					#label: 'Save_list' ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 87 580 630 683 ) 					#name: #List2 					#model: #Client_screen 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 304 554 ) 					#name: #Label22 					#label: 'Client_screen' ) ) ) )</body>
</methods>


<methods>
<class-id>M</class-id> <category>aspects</category>

<body package="proj2" selector="DK_calory">DK_calory	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^DK_calory isNil		ifTrue:			[DK_calory := String new asValue]		ifFalse:			[DK_calory]</body>

<body package="proj2" selector="Save_list">Save_list	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^Save_list isNil		ifTrue:			[Save_list := SelectionInList new]		ifFalse:			[Save_list]</body>

<body package="proj2" selector="S_calory">S_calory	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^S_calory isNil		ifTrue:			[S_calory := String new asValue]		ifFalse:			[S_calory]</body>

<body package="proj2" selector="D_dish">D_dish	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^D_dish isNil		ifTrue:			[D_dish := String new asValue]		ifFalse:			[D_dish]</body>

<body package="proj2" selector="DK_price">DK_price	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^DK_price isNil		ifTrue:			[DK_price := String new asValue]		ifFalse:			[DK_price]</body>

<body package="proj2" selector="DK_name">DK_name	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^DK_name isNil		ifTrue:			[DK_name := String new asValue]		ifFalse:			[DK_name]</body>

<body package="proj2" selector="A_price">A_price	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^A_price isNil		ifTrue:			[A_price := String new asValue]		ifFalse:			[A_price]</body>

<body package="proj2" selector="DK_in">DK_in	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^DK_in isNil		ifTrue:			[DK_in := String new asValue]		ifFalse:			[DK_in]</body>

<body package="proj2" selector="S_name">S_name	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^S_name isNil		ifTrue:			[S_name := String new asValue]		ifFalse:			[S_name]</body>

<body package="proj2" selector="A_name">A_name	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^A_name isNil		ifTrue:			[A_name := String new asValue]		ifFalse:			[A_name]</body>

<body package="proj2" selector="Client_screen">Client_screen	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^Client_screen isNil		ifTrue:			[Client_screen := SelectionInList new]		ifFalse:			[Client_screen]</body>

<body package="proj2" selector="D_in">D_in	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^D_in isNil		ifTrue:			[D_in := String new asValue]		ifFalse:			[D_in]</body>

<body package="proj2" selector="D_price">D_price	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^D_price isNil		ifTrue:			[D_price := String new asValue]		ifFalse:			[D_price]</body>

<body package="proj2" selector="A_In">A_In	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^A_In isNil		ifTrue:			[A_In := String new asValue]		ifFalse:			[A_In]</body>

<body package="proj2" selector="D_name">D_name	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^D_name isNil		ifTrue:			[D_name := String new asValue]		ifFalse:			[D_name]</body>

<body package="proj2" selector="DS_price">DS_price	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^DS_price isNil		ifTrue:			[DS_price := String new asValue]		ifFalse:			[DS_price]</body>

<body package="proj2" selector="S_price">S_price	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^S_price isNil		ifTrue:			[S_price := String new asValue]		ifFalse:			[S_price]</body>

<body package="proj2" selector="DS_name">DS_name	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^DS_name isNil		ifTrue:			[DS_name := String new asValue]		ifFalse:			[DS_name]</body>

<body package="proj2" selector="DS_calory">DS_calory	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^DS_calory isNil		ifTrue:			[DS_calory := String new asValue]		ifFalse:			[DS_calory]</body>

<body package="proj2" selector="A_calory">A_calory	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^A_calory isNil		ifTrue:			[A_calory := String new asValue]		ifFalse:			[A_calory]</body>

<body package="proj2" selector="D_calory">D_calory	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^D_calory isNil		ifTrue:			[D_calory := String new asValue]		ifFalse:			[D_calory]</body>

<body package="proj2" selector="DS_discription">DS_discription	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^DS_discription isNil		ifTrue:			[DS_discription := String new asValue]		ifFalse:			[DS_discription]</body>
</methods>

<methods>
<class-id>M</class-id> <category>actions</category>

<body package="proj2" selector="Suggest_Light">Suggest_Light	"This stub method was generated by UIDefiner"	^self</body>

<body package="proj2" selector="Suggest_Full">Suggest_Full	"This stub method was generated by UIDefiner"	^self</body>

<body package="proj2" selector="Remove_Entry_List">Remove_Entry_List	"This stub method was generated by UIDefiner"	^self</body>

<body package="proj2" selector="Create_List">Create_List	"This stub method was generated by UIDefiner"	^self</body>

<body package="proj2" selector="Retrieve_List">Retrieve_List	"This stub method was generated by UIDefiner"	^self</body>

<body package="proj2" selector="Save_List">Save_List	"This stub method was generated by UIDefiner"	^self</body>

<body package="proj2" selector="Add_Entry_List">Add_Entry_List	"This stub method was generated by UIDefiner"		^self</body>
</methods>

<methods>
<class-id>M</class-id> <category>initialize-release</category>

<body package="proj2" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	f := nil.	d := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>



</st-source>
