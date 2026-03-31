# oss-audit--24BCE10190
Student: Tanish Kumar
Roll Number: 24BCE10190
Course: Open Source Software (OSS)
Project Overview
This repository serves as the practical documentation for my Open Source Software Audit project. For this assignment, I chose to audit Git, the distributed version control system that powers modern software development. Originally authored by Linus Torvalds in 2005 to manage the Linux kernel development, Git is licensed under the GNU GPL v2. This audit explores Git's architecture, its implementation of the "Four Freedoms," and its integration within a Linux environment.
System Environment
To conduct this audit, I utilized the following environment:
Operating System: Ubuntu 24.04 LTS (running via WSL2)
Shell: GNU bash, version 5.2.21
Audited Version: git version 2.43.0
Shell Script Portfolio
I developed five specific Bash scripts to automate the auditing process, mapped to the OSS syllabus units:
script1.sh (System Identity): Verifies the audit environment by fetching the Linux kernel version and OS release details.
script2.sh (Package Inspector): Confirms if Git is installed via the apt package manager, identifies the binary location (/usr/bin/git), and checks the current version.
script3.sh (Repository Auditor): Scans the current directory for the .git folder, reporting on the size of the object database and file permissions to ensure data integrity.
script4.sh (Commit Analyzer): A diagnostic tool that parses the git log to count total commits and identify specific keywords like "fix" or "update" in the version history.
script5.sh (OSS Manifesto): An interactive script that captures user reflections on the importance of distributed collaboration and generates a formatted Git-centric manifesto.
How to Run the Project
1. Clone the Repository

Bash
git clone https://github.com/Tanishh2310/oss-audit--24BCE10190.git

2. Set Permissions

Bash
chmod +x *.sh
3. Execute the Audit

Bash
./script1.sh
./script2.sh
./script3.sh
./script4.sh
./script5.sh
Learning Outcomes
Expertise in Linux system auditing and environment verification.
Advanced Bash scripting for automation and data extraction.
Understanding of distributed version control mechanics.
Practical application of file system permissions and log parsing.
Deepened perspective on the GNU General Public License (GPL).
Open Source Philosophy
This project highlights the Four Freedoms applied to Git:
Freedom 0: The freedom to run Git for any purpose (commercial or personal).
Freedom 1: The freedom to study the Git source code and change it.
Freedom 2: The freedom to redistribute copies to help others.
Freedom 3: The freedom to distribute modified versions to the community.
License
This project is created for academic purposes as part of the Open Source Software course at VIT Bhopal.
Acknowledgment
I would like to thank the contributors of the Git project and the wider FOSS community. Their commitment to open standards provides the essential infrastructure for global collaborative engineering.
