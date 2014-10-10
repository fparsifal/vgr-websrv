# WEB SERVER WITH VAGRANT MACHINE #

This repository could be useful for create and configure a Web Server Apache with an Vagrant Machine.

### Installation Step by Step ###
1.	Get and install Vagrant for your OS [Download](https://www.vagrantup.com/downloads.html);
2.	Download this repository and extract on your desktop;
3.	Create a folder where you want to install the virtual machine *es. c:\vagrant*;
4.	Execute the terminal of your computer; **c:\User\Administrator>**
5.	Navigate into folder created at step 3;  **c:\User\Administrator>cd c:\vagrant**
6.	Execute command *vagrant init*; **c:\vagrant>vagrant init**
7.	Now copy and replace the content of repository extracted *Step 2* into folder *c:\vagrant*

### Configuration Web Server ###
1.	Edit file /vgr-config/Homestead.yaml, insert password for mysql (line 22,23) and path of folder of your customized VirtualHosts (line 31);
2.	You may also **paying attention** customize other features with editing **homestead.rb** and **Vagrantfile** but **Attention**.

### Usage Vagrant ###
* For START: from terminal lauch the command:
    ```
c:\vagrant>vagrant up
```
* Wait until the end of the all processes
* Open ssh connection on **localhost:2222**