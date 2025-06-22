---
title: Vim
excerpt: Some useful commands for Vim
---

# Standard

## Enclose a word, using single quotes.
`:ciw '' <Esc> P`

## List all the active buffers. 
`:ls `

## Navigation
1. `k`: UP
2. `j`: DOWN
3. `h`: LEFT
4. `l`: RIGHT
5. `w`: NEXT WORD
6. `b`: PREVIOUS WORD
7. `e`: NEXT WORD END
8. `ge`: PREVIOUS WORD END
9. `gg`: TOP
10. `G`: BOTTOM
11. `0`: LINE START
12. `$`: LINE END
13. `^`: LINE START NON BLANK
14. `g_`: LINE END NON BLANK
15. `(`: MOVE ONE SENTENCE UP
16. `)`: MOVE ONE SENTENCE DOWN
17. `{`: MOVE ONE PARAGRAPH UP
18. `}`: MOVE ONE PARAGRAPH DOWN
19. ``: TOGGLE BETWEEN LAST TWO VISITED PLACES
20. `.: NAVIGATE TO THE LAST EDITED PLACE 
21. `%`: NAVIGATE TO THE MATCHING BRACE

## Scroll
1. `CTRL-u`: HALF A PAGE UP
2. `CTRL-d`: HALF A PAGE DOWN
3. `CTRL-b`: FULL PAGE UP
4. `CTRL-f`: FULL PAGE DOWN 

## Finding and jumping to a character
1. `f`: FIND
2. `F`: FIND REVERSE
3. `t`: FIND NEXT
4. `T`: FIND PREVIOUS

## Entering into insert mode from normal mode
1. `i`: INSERT (Places the cursor before the current position)
2. `a`: INSERT (Places the cursor after the current position)
3. `A`: INSERT LINE AFTER (Places the cursor at the end of the line)
4. `I`: INSERT LINE BEFORE (Places the cursor at the beginning of the line)
5. `o`: INSERT LINE AFTER (Places the cursor at the end of the line)
6. `O`: INSERT LINE BEFORE (Places the cursor at the beginning of the line)
7. 's': REPLACE THE CURRENT LETTER AND ENTER INTO INSERT MODE
8. 'S': REPLACE THE CURRENT WORD AND ENTER INTO INSERT MODE
9. 'C': REPLACE THE CURRENT LINE AND ENTER INTO INSERT MODE
10. 'c': REPLACE AND ENTER INTO INSERT MODE

## Copy
1. `yy`: COPY THE CURRENT LINE
2. `y`: COPY BASED ON THE MOTION
3. `yi{`: To copy text within {}
3. `ya{`: To copy text including {}
4. `yiw`: To copy text within a word
5. `"ayw`: To copy a word in a register

## Search and replace

## Undo
1. `u`: UNDO
2. `Ctrl-r`: REDO

## Delete
1. `x`: DELETE THE CURRENT LETTER
2. `d`: DELETE BASED ON THE MOTION
3. `dw`: DELETE THE CURRENT WORD
4. `dd`: DELETE THE CURRENT LINE
5. `D`: DELETE FROM CURRENT POSITION TO END OF THE LINE
6. `di{`: To delete text within {
7. `da{`: To delete text including {
8. `diw`: To delete text within a word
9. `dis`: To delete text within a sentence
10. `dip`: To delete text within a paragraph

## Search 
1. `/`: SEARCH
2. `?`: SEARCH REVERSE
3. `n`: SEARCH NEXT
4. `N`: SEARCH PREVIOUS
5. `*`: SEARCH CURRENT WORD FORWARD
6. `#`: SEARCH CURRENT WORD BACKWARD

## Marks
Marks in vim are like bookmarks. We can mark a place in a file and later jump to that place.
In order to mark a place, we use m followed by the letter of the alphabete which would stored in register.
in order to jump to that place, we use ` followed by the letter of the alphabete which would stored in register.

Upper case letters are used as global marks and lower case letters are used as local marks.
To see the list of all the marks in vim, we use `:marks` command.

## Folds
1. `za`: OPEN/CLOSE FOLD
2. `zM`: CLOSE ALL FOLDS
3. `zR`: OPEN ALL FOLDS

## Focus
1. `zz`: CENTER THE CURSOR

## Indentation
1. `==`: CORRECT THE INDENTATION
2. Select visually the entire block that needs to be indended followed by `=`
3. `>`: INCREASE THE INDENTATION
4. `<`: DECREASE THE INDENTATION

## Block mode
This mode is useful when you want to select multiple lines or words in visual mode.
1. `v`: VISUAL
2. `V`: LINE VISUAL
3. `<CTRL-V>`: BLOCK VISUAL

### Edit multiple lines in visual mode
1. After entering Block visual mode, make selection following by `Ctrl-i`. Edit the first occurance and exit the insert mode.
This would apply the same change to all the selected lines.

## Join lines
1. `J`: JOIN LINES

## Manipulate case
1. `~`: TOGGLE CASE OF THE CHARACTER UNDER THE CURSOR
5. `gUw`: UPPERCASE CASE OF THE WORD UNDER THE CURSOR
3. `guw`: LOWERCASE CASE OF THE WORD UNDER THE CURSOR
4. `g~w`: TOGGLE CASE OF THE WORD UNDER THE CURSOR
5. `gUU`: UPPERCASE CASE OF THE LINE UNDER THE CURSOR
6. `guu`: LOWERCASE CASE OF THE LINE UNDER THE CURSOR

## Number manipulation
1. Increment the number under the cursor by pressing `Ctrl-a` keys
2. Decrement the number under the cursor by pressing `Ctrl-x` keys

## Sort
1. To sort lines in the file use the command `:sort`
2. To sort lines in reverse order use the command `:sort!`
3. To sort lines and keep unique lines in the file use the command `:sort u`

## read a file or command output in the file
Use the command `:read` followed by the name of the file or the command. 


## Macro
If we want to record an action and apply it later, we can use macros.
Use `q` to start recording followed by an alphabet key (i.e. register) and `@`, followed by the same alphabet key` to apply the macro.
To stop recording, use `q` again.

## List value copied in each register. 

# Custom

## Enclose value with $char
- Use v (visual mode) to make the selection.
- Press "S" to activate the vim-surround plugin
- Press $char to surround the selected text with $char
