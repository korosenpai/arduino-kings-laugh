' script to play ihihih haw

' check if audio downloaded else download

' get temp folder
set fileSysObj = WScript.CreateObject("Scripting.FileSystemObject")
tempFilesDir = fileSysObj.GetSpecialFolder(2)

' get current fullpath
scriptPath = Wscript.ScriptFullName ' full path of this file
set scriptFile = fileSysObj.GetFile(scriptPath)
currentFolder = fileSysObj.GetParentFolderName(scriptFile) 

' get audio path
dim audioDir
' audioDir = tempFilesDir + "\kings-laugh\"
audioDir = currentFolder + "\audio\"

' audio list
set audioFiles = CreateObject("System.Collections.ArrayList")
audioFiles.add "laugh.mp3"
audioFiles.add "cry.mp3"
audioFiles.add "angry.mp3"



''''''''''''''''''''''''''''''''''' check and download files '''''''''''''''''''''''''''''''''''

' if folder not found create it
if not fileSysObj.FolderExists(audioDir) then
    fileSysObj.CreateFolder(audioDir)
end if

' if audios not found download
for each audio in audioFiles
    if not fileSysObj.FileExists(audioDir + audio) then
        msgbox(audioDir + audio)

        ' download audio file
    end if
    next

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''