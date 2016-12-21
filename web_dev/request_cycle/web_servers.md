What are some of the key design philosophies of the Linux operating system?

Key philosophy behind Linux is that unlike Windows or Mac they assumed that the user knows what they are doing. Which means you can do a lot of really cool things, and you can also really screw up quickly. The design philosophy is to have small pieces that do things extremely well. So you have a bunch of different pieces that you can put together to make a bigger program. 

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A virtual private server is a virtual machine installed on someone else's computer that you rent. Advantages not having to have really fast internet, or deal with maintaining you rown hardware. Also being able to create a new virtual machine instantly if you've totally screwed up the one you are working on.

Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

You don't want to give an application permissions to do anything that it wasn't originally written to do. That way the os is secure, especially because Linux is opensource and if you ran something from git and it was malicious then it would not be able to mess with anything that it wasn't allowed/expected to with the expectaion that it was not malware. Also, you can really, really screw up if you are logged in as root because it is assumed that you know what you are doing and there's nothing that asks, "are you sure you want to do that?"