#
# Usage: awk -f docs/build/cheatsheet.awk path/to/janusweb/scripts/{room,janusbase,object,text,image,janusparagraph,video,sound,januslight,websurface}.js > docs/build/cheatsheet.md
#
BEGIN                       { 
                              print "> **NOTE:** generated from [janusweb](https://github.com/jbaicoianu/janusweb) (via [cheatsheet.awk](build/cheatsheet.awk)), so some attributes might be janusweb](https://github.com/jbaicoianu/janusweb)-specific and not work in all JML-browsers"
                            }

/this\.defineProperties\({/ { PRINT=2; tag=FILENAME; 
                              gsub(/.*\//,"",tag);
                              gsub(/\..*/,"",tag);
                              gsub(/^janus/,"",tag);
                              if( tag == "base" ){
                                print "\n\n### common attributes\n"
                                print "\nAll tags inside `<room>` support these attributes in Janusweb.\n\n> **NOTE**: not all of these are part of (all) JML (browsers). Use with care!\n\n"
                              }else{
                                print "\n\n### &lt;"tag"&gt;\n"
                              }
                              print "|attribute | type |"
                              print "|----------|------|"
                            }

/}\)/                       { PRINT=0 }

/.*/                        { 
                              gsub(/^[ \t]+|[ \t]+$/, "", $0) # trim
                              gsub(/''/,"\"\"",$0)
                              gsub(/^/,"`",$0)
                              gsub(/: {/,"`|",$0)
                              gsub(/'/,"`",$0)
                              #gsub(/`, /,"`<br>",$0)
                              gsub(/``/,"`",$0)
                              if(PRINT == 1) print "| "$0 
                              else PRINT--
                            }
