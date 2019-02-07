# Brandon-Carey-IEAutomation
"I’m looking for some help and I can’t find the answer. Maybe you guys can help me. I’m trying to automate IE, but it seems you have to be a local admin (ad\admbran) to do it properly, and the website I’m going to only authorizes with my regular creds (ad\bran). So I need to know how I can load the process of internet explorer with my user profile but run the whole thing as my local admin so it works."

Solution for this was to create a new Internet explorer process under the contexct of a normal user, then to save the Handler id and pass it to another script that will be ran as admin, and then use that Handler id to levergae the COM Interface of the already open Internet explorer instance
