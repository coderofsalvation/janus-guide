#
# Usage: awk -f docs/build/cheatsheet.awk path/to/janusweb/scripts/{room,janusbase,object,text,image,janusparagraph,video,sound,januslight,websurface}.js > docs/build/cheatsheet.md
#
BEGIN                       { 
                              out=""
                            }

/this\.defineProperties\({/ { PRINT=2; tag=FILENAME; 
                              gsub(/.*\//,"",tag);
                              gsub(/\..*/,"",tag);
                              gsub(/^janus/,"",tag);
                              out = out "\n\n### &lt;"tag"&gt;\n\n"
                              if( tag == "base" ){
                                out = out "\n`<base>` does not exist, but all elements inside `<room>` inherit from it (and its attributes).\n\n> **NOTE**: `<base>` does not exist, not all of these are part of (all) JML (browsers). Use with care!\n\n"
                              }
                              tags[++ntags] = tag # keep track of tags
                              out = out "|attribute | type |\n"
                              out = out "|----------|------|\n"
                            }

/}\)/                       { PRINT=0 }

/.*/                        { 
                              gsub(/^[ \t]+|[ \t]+$/, "", $0) # trim
                              gsub(/''/,"\"\"",$0)
                              gsub(/^/,"`",$0)
                              gsub(/:[ ]+{/,"`|",$0)
                              gsub(/'/,"`",$0)
                              gsub(/set:.*comment:/,"",$0)
                              gsub(/THREE\./,"",$0)
                              gsub(/  /," ",$0)
                              gsub(/},$/,"|",$0)
                              gsub(/``/,"`",$0)
                              if(PRINT == 1) out = out "| "$0"\n" 
                              else PRINT--
                            }

END                         {
                              print "# Cheatsheet\n\n"
                              print "> Jump to section:\n"
                              for( i = 1; i <= ntags; i++){
                                printf "[&lt;"tags[i]"&gt;](build/cheatsheet.md#lt"tags[i]"gt] "
                              }
                              print "\n\n> **NOTE:** generated from [janusweb](https://github.com/jbaicoianu/janusweb) (via [cheatsheet.awk](build/cheatsheet.awk)), so some attributes might be janusweb](https://github.com/jbaicoianu/janusweb)-specific and not work in all JML-browsers"
                              print out
                            }
