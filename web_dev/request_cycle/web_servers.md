Key Design philosophies of Linux operating system
  - assumes user knows what they are doing
      - will allow you to execute any command without asking to make sure you want to.
      - primarily developed as a group effort by volunteers on the internet from all over the world.
What is VPS (virtual private server)? What are the advantages of using a VPS?
  - this is a virtual server sold by an internet hosting service. It has its own copy of an operating system.
  - a VPS numerous users share the same server. Everyone's data is private. It gives you root access to the server. A dedicated server is more expensive. It is easy to manage so people can run their business.
  A dedicated server is like having a whole apartment building whereas having a single apartment is like having a VPS; the whole building costs WAY more than just an apartment and you don't need all of it for most families.
  Performance is comparably the same and managing it is easy with a control panel on the internet.
  You can also freely choose your operating system that you want to use on VPS.

Why is it considered a bad idea to run programs as the root user on a Linux system?
 - You are all powerful when you run as the root. Your command rm -rf would be done without any questions. But if you run it as someone else then it would be denied b/c of access. You are more prone to mistakes for software bugs. You dont need it for most uses except for administrative work. You also have more vulnerability to malicious software which would have more access because you gave it full permissions.


