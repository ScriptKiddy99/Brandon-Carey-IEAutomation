Param($IEProcess)

# Creates a new Shell.Application com object
$App = new-object -com shell.application

# We call App.Windows() to get all the current windows on the system, then we filter that information
# to return only the Internet Explorer instance we care about.
$IE = $app.windows() | where {$_.HWND -eq $IEProcess}

# Navigates to Google
$ie.Navigate("https://www.google.com/?gws_rd=ssl")

# IE.Busy() will return true if a webpage is in the process of loading
# Therefore we wait until this method returns false, meaning the webpage is loaded
While ( $IE.Busy() ) { Start-Sleep -Seconds 3 } 

# getElementsByName by name method will return an Array of all HTML Elements with the Name Attribute set to "Q"
# Therefore we access the 0th index of the returned array to get our Google search field text box object
$IE_WebPage_GoogleSearchField = @($IE.Document.getElementsByName("q"))[0]

# Once we have our Search Field we can change it's beaviour and attributes, in this case we set the text of this field 
# equal to cats :) 
$IE_WebPage_GoogleSearchField.innerText = "Cats"

Start-Sleep -Seconds 1

# We then replicate the above for the "Google Search" button
$IE_WebPage_GoogleSearchButton = @($IE.Document.getElementsByName("btnK"))[0]
$IE_WebPage_GoogleSearchButton.Click()