# Sharp Knives: A PostgreSQL Workshop


## Installation and setup

### Basics

We will use a Vagrant box with Ubuntu 16 TLS in order to: 

1. Have a uniform setup for everyone
2. Not mess up anyone's existing setup

The host OS for Vagrant will be your regular Dev OS, and you will be able to edit everything in your favourite editor.

**Desired end state:**

1. A server with PostgreSQL 9.5 installed
2. SSH access to this server
3. Ability to copy and edit files on this server
4. Ability to run scripts on this server
5. A working CLI to interact with PostgreSQL instance
6. A working GUI to interact with PostgreSQL instance

For 1, 2, 3, and 4 we will use Ubuntu 16 LTS through Vagrant. For 5, we will `pgcli` on the host box. For 6, we will use DataGrip. If you want, you can use a tool that you are already familiar with. For example, I am on a MacOS and I use [Postico][postico]. Amongst Linux users, [DBeaver][dbeaver] is widely popular.


**Terminology**

**Host box:** Your own development machine  
**Guest box:** The virtual machine created by Vagrant  


### Procedure

Here's the setup procedure:

1. Install the latest [Vagrant][vagrant]. The version is 2.2.3 as of writing this.
1. Install the latest [DataGrip][datagrip]. The version is 2018.3.x as of writing this.
1. Install the latest [pgcli][pgcli] on `host` box. The version is 2.0.2 as of writing this. In effect, pgcli is installed 2 times. Once on `host` box by you, and once on `guest` box, by vagrant during provisioning.
1. Fork this repo under a private repository.  Fork is important, because you will want to push your own changes, and private is important because this material is only available to workshop attendees. GitHub now supports private forks. Gitlab has always had private forks. Make your choice, and get started!
1. Ensure vagrant works on your dev box by running `vagrant list-commands`. You should get an output like:


        Below is a listing of all available Vagrant commands and a brief
        description of what they do.
        
        box             manages boxes: installation, removal, etc.
        cap             checks and executes capability
        cloud           manages everything related to Vagrant Cloud
        destroy         stops and deletes all traces of the vagrant machine
        docker-exec     attach to an already-running docker container
        docker-logs     outputs the logs from the Docker container
        docker-run      run a one-off command in the context of a container
        global-status   outputs status Vagrant environments for this user
        halt            stops the vagrant machine
        help            shows the help for a subcommand
    
        ... more lines follow

1. Go to the checked out copy of your repository, and run `vagrant up`. Ensure you have a reasonably high bandwidth internet connection. This stage downloads and installs the Linux VM, PostgreSQL and other libraries.  You should see output that ends with lines like these:

        ==> default: Configuring and enabling network interfaces...
        ==> default: Mounting shared folders...
            default: /vagrant => /Users/swanand/projects/courses/pg-workshop
            default: /vagrant_data => /Users/swanand/projects/courses/pg-workshop/shared
        ==> default: Machine already provisioned. Run `vagrant provision` or use the `--provision`
        ==> default: flag to force provisioning. Provisioners marked to run always will still run.
        ==> default: Running provisioner: shell...
            default: Running: inline script
            

1. If everything went well, you can *`vagrant ssh`* and you will be logged into the box, with a prompt that reads: **`vagrant@ubuntu-xenial:~$ `**. This is the **`guest`** box we mentioned earlier.
1. On the _guest_ box, run 

        psql -U pgw -d pgw-main

    to ensure everything works. If that didn't work, 

        sudo su - postgres
        psql -U pgw -d pgw-main 
        
    Email me if this didn't work.
        
1. From your _host_ box, try to configure a connection to the PostgreSQL on the `guest` box. In DataGrip, create a new project (if you have the code checked out, you can select it when the prompt appears). Here are my connection setup windows:
    <img width="762" alt="screenshot 2019-02-25 at 3 38 21 pm" src="https://user-images.githubusercontent.com/90904/53334254-3c00d380-391e-11e9-8954-a23392e84e9e.png">
    <img width="912" alt="screenshot 2019-02-25 at 3 37 35 pm" src="https://user-images.githubusercontent.com/90904/53334256-3c00d380-391e-11e9-800b-0cbefe1fe377.png">
1. One final thing to check: [Editor integration with `pgcli`][pgcli-editor]. Make sure `\e` works from your `pgcli` prompt, and by works I mean:
    1. It opens your preferred editor
    2. It populates the query on the command line after editing is done:


### Final Checklist

1. You are able to bring up the `guest` box: `vagrant up`
2. You are able to connect to PostgreSQL on the `guest` box through `pgcli` on the `host` box.
3. You are able to connect to PostgreSQL on the `guest` box through `DataGrip` on the `host` box.



[postico]: https://eggerapps.at/postico/
[dbeaver]: https://dbeaver.io/
[vagrant]: https://www.vagrantup.com/
[datagrip]: https://www.jetbrains.com/datagrip/
[pgcli]: https://www.pgcli.com/
[pgcli-editor]: https://www.pgcli.com/editor

