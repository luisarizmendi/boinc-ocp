Run BOINC CLIENT on OpenShift
=====================

At this moment the easier way to run it is using the template. You will need the project URL that you want to join in (ie. http://boinc.bakerlab.org/rosetta) and your "account key" (see below how to get it with your BOINC credentials)

```
oc process -f template.yaml -p BOINC_CMD_LINE_OPTIONS_PROJECT=<project_URL> -p BOINC_CMD_LINE_OPTIONS_ACCOUNT_KEY=<account_key> -p BOINC_CLIENT_NUMBER=<number_of_boinc_clients> | oc create -f - 
```

Getting your "Account ID"
=====================

You need to be in a system that is running the boinc client. With the same user that is running the boinc client (see note below if you installed with yum/dnf) you need to run this command:

`boinccmd --lookup_account <project_url> <your_login_email> <password>`

#### NOTE: If used yum/dnf to install boinc-client, a new user called "boinc" is created and used to run it. It's created by default with no shell (/sbin/nologin) so you will need to modify the /etc/passwd to let run commands as that user in order to use the boinccmd command above
