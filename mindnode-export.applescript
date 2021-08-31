set folderPath to choose folder
set fileExtension to "mindnode"
tell application "Finder"
 try
 set the fileList to files of folderPath whose name extension is fileExtension
 end try
end tell

tell application "/Applications/MindNode.app"
 repeat with mindNodeFile in fileList
 open (mindNodeFile as alias)
 set mindNodeDocument to document 1
 set fileName to POSIX path of (mindNodeFile as alias)
 set baseName to (characters 1 thru -((count of fileExtension) + 3) of fileName) as string
 set exportFile to ((baseName & ".pdf") as POSIX file)
 tell mindNodeDocument to export to exportFile as PDF
 close window 1 without saving
 end repeat
end tell