" Vim syntax file
" Language:	Smali
" Author:	Angel Alonso <alderzdev@gmail.com>
" Maintainer:	Leonardo Estacio <mdnssknght@gmail.com>
" Last Change:	2022 May 18

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

set iskeyword+=.
set iskeyword+=-
set iskeyword+=/

syn keyword     sDirective  .annotation .array-data .catch .catchall .class .enum .epilogue .field .implements .line .local .locals .method .packed-switch .parameter .prologue .registers .restart .source .sparse-switch .subannotation .super
syn keyword     sKeyword    abstract annotation bridge constructor declared-synchronized enum final interface native private protected public static strictfp synchronized synthetic system transient varargs volatile
syn keyword     sFunction   add-double add-double/2addr add-float add-float/2addr add-int add-int/2addr add-int/lit16 add-int/lit8 add-long add-long/2addr aget aget-boolean aget-byte aget-char aget-object aget-short aget-wide and-int and-int/2addr and-int/lit16 and-int/lit8 and-long and-long/2addr aput aput-boolean aput-byte aput-char aput-object aput-short aput-wide array-length check-cast cmp-long cmpg-double cmpg-float cmpl-double cmpl-float const const-class const-string const-string-jumbo const-wide const-wide/16 const-wide/32 const-wide/high16 const/16 const/4 const/high16 div-double div-double/2addr div-float div-float/2addr div-int div-int/2addr div-int/lit16 div-int/lit8 div-long div-long/2addr double-to-float double-to-int double-to-long execute-inline fill-array-data filled-new-array filled-new-array/range float-to-double float-to-int float-to-long goto goto/16 goto/32 if-eq if-eqz if-ge if-gez if-gt if-gtz if-le if-lez if-lt if-ltz if-ne if-nez iget iget-boolean iget-byte iget-char iget-object iget-object-quick iget-quick iget-short iget-wide iget-wide-quick instance-of int-to-byte int-to-char int-to-double int-to-float int-to-long int-to-short invoke-direct invoke-direct-empty invoke-direct/range invoke-interface invoke-interface/range invoke-static invoke-static/range invoke-super invoke-super-quick invoke-super-quick/range invoke-super/range invoke-virtual invoke-virtual-quick invoke-virtual-quick/range invoke-virtual/range iput iput-boolean iput-byte iput-char iput-object iput-object-quick iput-quick iput-short iput-wide iput-wide-quick long-to-double long-to-float long-to-int monitor-enter monitor-exit move move-exception move-object move-object/16 move-object/from16 move-result move-result-object move-result-wide move-wide move-wide/16 move-wide/from16 move/16 move/from16 mul-double mul-double/2addr mul-float mul-float/2addr mul-int mul-int/2addr mul-int/lit8 mul-int/lit16 mul-long mul-long/2addr neg-double neg-float neg-int neg-long new-array new-instance nop not-int not-long or-int or-int/2addr or-int/lit16 or-int/lit8 or-long or-long/2addr rem-double rem-double/2addr rem-float rem-float/2addr rem-int rem-int/2addr rem-int/lit16 rem-int/lit8 rem-long rem-long/2addr return return-object return-void return-wide sget sget-boolean sget-byte sget-char sget-object sget-short sget-wide shl-int shl-int/2addr shl-int/lit8 shl-long shl-long/2addr shr-int shr-int/2addr shr-int/lit8 shr-long shr-long/2addr sparse-switch sput sput-boolean sput-byte sput-char sput-object sput-short sput-wide sub-double sub-double/2addr sub-float sub-float/2addr sub-int sub-int/2addr sub-int/lit16 sub-int/lit8 sub-long sub-long/2addr throw ushr-int ushr-int/2addr ushr-int/lit8 ushr-long ushr-long/2addr xor-int xor-int/2addr xor-int/lit16 xor-int/lit8 xor-long xor-long/2addr packed-switch
syn keyword     sVariable   v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20

syn match   sNumber		 "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syn match   sNumber		 "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syn match   sNumber		 "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
syn match   sNumber		 "\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"

syn region      sComment    start="#" end="$" keepend
syn region      sDirective  start="\.end" end="$" keepend

hi def link     sDirective  Include
hi def link     sKeyword    Label
hi def link     sFunction   Label
hi def link     sVariable   Operator
hi def link     sComment    Comment
hi def link     sNumber     Number

let b:current_syntax = "smali"
