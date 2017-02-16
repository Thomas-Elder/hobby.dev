# GENERAL FUNCTIONS #
# 
# bg()
# usage: bg <task>
#
# starts that task in the background so the current shell is usable.
function bg() {Start-Process -NoNewWindow @args}


# GENERAL ALIAS #
Set-Alias subl "E:\Programs\sublime_text\Sublime Text 3\sublime_text.exe"
Set-Alias make "C:\Program Files (x86)\GnuWin32\bin\make.exe"
Set-Alias ll ls -Force
Set-Alias chrome "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
Set-Alias mvc "C:\Program Files (x86)\Microsoft VS Code\code.exe"
Set-Alias sql sqlite3

function touch {set-content -Path ($args[0]) -Value ($null)} 

# GIT ALIAS #
# GIT CMDS #
Set-Alias g git

function Git-Status { git status }
Set-Alias gs Git-Status
Set-Alias gst Git-Status

function Git-Pull { git pull }
Set-Alias gpl Git-Pull

function Git-Push { git push }
Set-Alias gpu Git-Push

function Git-Commit { git commit -v }
Set-Alias gct Git-Commit

function Git-CommitAll { git commit -v -a}
Set-Alias gca Git-CommitAll

function Git-AmendAll { git commit -a --amend -C HEAD }
Set-Alias gcaa Git-AmendAll

function Git-Checkout { git checkout }
Set-Alias gck Git-Checkout

function Git-Branch { git branch }
Set-Alias gb Git-Branch

function Git-BranchAll { git branch -a }
Set-Alias gba Git-BranchAll

function Git-StatLog { git log --stat --max-count=5 }
Set-Alias glg Git-StatLog

function Git-PrettyLog { git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative }
Set-Alias glog Git-PrettyLog

# GIT SSH ENVIRONMENT VAR SET #
$env:path += ";" + (Get-Item "Env:ProgramFiles(x86)").Value + "\Git\bin"

# Load posh-git example profile
. 'E:\poshgit\posh-git-master\profile.example.ps1'

# CURRENT WORKING DIR #
cd e:\