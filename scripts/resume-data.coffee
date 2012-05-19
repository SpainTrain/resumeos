sections = {}

### Define Sections ###
sections.skills = {title: "Skills", elements: []}
sections.experience = {title: "Experience", elements: []}
sections.education = {title: "Education", elements: []}
sections.projects = {title: "Projects", elements: []}
sections.references = {title: "References", elements: []}

##############
### Skills ###
##############
sections.skills.elements = [
	name: "Languages"
	elements: [
		{key: "javascript", value: "JavaScript"},
		{key: "csharp", value: "C#"},
		{key: "java", value: "Java"},
		{key: "coffeescript", value: "CoffeScript"},
		{key: "sqlpl", value: "SQL(/PL)"},
		{key: "shell", value: "Shell"},
		{key: "c", value: "C"},
		{key: "python", value: "Python"},
		{key: "cpp", value: "C++"},
		{key: "haskell", value: "Haskell"}
	]
,
	name: "Development Libraries"
	elements: [
		{key: "jquery", value: "jQuery"},
		{key: "jsjac", value: "jsjac"},
		{key: "dotnet", value: ".NET (2.0-4.0)"},
		{key: "htmlfive", value: "HTML5"},
		{key: "nodejs", value: "Node.js"},
		{key: "winthirtytwo", value: "Win32"},
		{key: "jce", value: "Java Crypto Extensions"},
		{key: "swing", value: "Swing/AWT"},
		{key: "pcap", value: "PCAP"},
		{key: "stl", value: "STL"},
		{key: "xna", value: "XNA"},
		{key: "cuda", value: "CUDA"},
	]
,
	name: "Development Support Software"
	elements: [
		{key: "git", value: "Git"},
		{key: "redmine", value: "Redmine"},
		{key: "svn", value: "SVN"},
		{key: "msvs", value: "MS Visual Studio"},
		{key: "jasmine", value: "Jasmine"},
		{key: "gdb", value: "gdb"},
		{key: "netbeans", value: "Netbeans"},
		{key: "eclipse", value: "Eclipse"}
	]
,
	name: "Server Software"
	elements: [
		{key: "apache", 	value: "Apache (mod_<many>)"},
		{key: "openfire",	value: "OpenFire"						},
		{key: "iis", 			value: "IIS"								},
		{key: "msdc", 		value: "MS DC"							},
		{key: "squid", 		value: "Squid"							},
		{key: "jetty", 		value: "Jetty"							}
	]
,
	name: "Virtualization Software"
	elements: [
		{key: "vmware", value: "VMWare (ESX and player)"},
		{key: "vbox", 	value: "Virtual Box"						},
		{key: "imunes",	value: "IMUNES"									}
	]
,
	name: "Document Software"
	elements: [
		{key: "latex", 		value: "LaTeX"					},
		{key: "gimp", 		value: "GIMP/Photoshop"	},
		{key: "visio", 		value: "Microsoft Visio"},
		{key: "graphviz",	value: "GraphViz"				},
		{key: "gnuplot", 	value: "GNUPlot"				}
	]
,
	name: "Systems Administration Software"
	elements: [
		{key: "nixutil",	value: "Standard Unix Utilities"},
		{key: "nagios", 	value: "Nagios"									},
		{key: "dtrace", 	value: "DTrace"									}
	]
,
	name: "Platforms"
	elements: [
		{key: "windows", 	value: "Windows"							},
		{key: "linux", 		value: "Linux"								},
		{key: "bivio", 		value: "Bivio 2K/7K"					},
		{key: "endace", 	value: "Endace Ninjabox"			},
		{key: "solaris",	value: "Solaris 10 (and TX)"	},
		{key: "aws", 			value: "AWS EC2"							},
		{key: "cisco", 		value: "Cisco IOS/CatOS"			}
	]
,
	name: "Technologies"
	elements: [
		{key: "webservices", 		value: "Web Services"		},
		{key: "ajax", 					value: "AJAX"						},
		{key: "xmpp", 					value: "XMPP"						},
		{key: "virtualization",	value: "Virtualization"	},
		{key: "tcpip", 					value: "TCP/IP"					},
		{key: "pki", 						value: "PKI"						},
		{key: "mpls", 					value: "MPLS"						},
		{key: "rsvpte", 				value: "RSVP(-TE)"			}
	]
,
	name: "Security Software"
	elements: [
		{key: "wireshark", 	value: "(Wire/T)shark/tcpdump"	},
		{key: "netwitness",	value: "Netwitness"							},
		{key: "cain", 			value: "Cain & Abel"						},
		{key: "ettercap", 	value: "Ettercap"								},
		{key: "nmap", 			value: "Nmap"										},
		{key: "metasploit", value: "Metasploit"							},
		{key: "ftk", 				value: "FTK"										},
		{key: "encase", 		value: "EnCase"									}
	]
]

##################
### Experience ###
##################
sections.experience.elements.push {
	key: "mitre"
	title: "Information Security Engineer/Scientist"
	organization: "MITRE Corporation"
	start_date: new Date(2010, 2, 1)
	end_date: "Current"
	description: "Tasks in the Defense & Homeland Security department have included work with the Assistant Secretary of Defense for Research and Engineering (ASDRE), Cross Boundary Information Sharing Laboratory (XBIS), Army Research Laboratory (ARL), and Air Force JSTARS.  Deliverables have primarily consisted of software and technical documents. Specific projects are detailed in the Projects section below.  Responsibilities also include interviewing candidates on the phone and in person regularly."
}

sections.experience.elements.push {
	key: "disa"
	title: "Computer Scientist"
	organization: "Defense Information Systems Agency"
	start_date: new Date(2010, 1, 31)
	end_date: new Date(2007,5,30)
	description: "This position involved a variety of duties including engineering, logistics, project planning, and coordination in support of the program office for enterprise security sensors. The primary project, ECOS, entailed deployment of customized network monitoring technology at the most critical points on the DISN Core. One notable piece of this project was writing a Java application that presented a Wireshark-like UI and allowed analysts to retrieve full packet captures from network sensors."
}

sections.experience.elements.push {
	key: "disa-trainee"
	title: "Computer Science Trainee"
	organization: "Defense Information System Agency"
	start_date: new Date(2006, 6)
	end_date: new Date(2006, 8)
	description: "The largest project in this position was drafting a completely original guide for penetration testing Voice over IP (VoIP) systems. The document was produced for their red and incident response teams, but has proliferated to other agencies as well."
}

sections.experience.elements.push {
	key: "clear-channel"
	title: "Engineer Assistant"
	organization: "Clear Channel Wireless"
	start_date: new Date(2001, 12)
	end_date: new Date(2004, 12)
	description: "Installed equipment, deployed audio, video, CAT5 and fiber cables, and terminated video and network cables in a new facility in Dec 2001. A summer 2002 internship involved researching performance, functionality, and dependability of wireless WAN solutions and reporting the results to the VP of DTV Engineering."
}

sections.experience.elements.push {
	key: "biglots"
	title: "Associate"
	organization: "Big Lots!"
	start_date: new Date(2002, 3, 25)
	end_date: new Date(2005, 5)
	description: "Insert BL desc"
}

#################
### Education ###
#################
sections.education.elements.push {
	key: "tu-ms"
	organization: "University of Tulsa"
	location: "Tulsa, OK"
	end_date: new Date(2007, 5)
	gpa: 4
	degree: "Masters of Science in Computer Science"
	description: "Thesis Topic: Security Issues Related to RSVP-TE Signaling in MPLS Networks"
}

sections.education.elements.push {
	key: "tu-bs"
	organization: "University of Tulsa"
	location: "Tulsa, OK"
	end_date: new Date(2005, 12)
	gpa: 3.769
	degree: "Bachelors of Science in Computer Science"
	description: "Minor: Mathematics"
}

sections.education.elements.push {
	key: "tulsa-tech"
	organization: "Tulsa Technology Center"
	location: "Tulsa, OK"
	end_date: new Date(2002, 5)
	gpa: 4
	degree: "Cisco Certified Network Associate and Internet Security"
	description: "Two academic years total"
}

################
### Projects ###
################
sections.projects.elements.push {
	key: "xmpp-web"
	name: "XMPP Web Client"
	org_key: "mitre"
	description: "Worked with one other developer and one tester to create a custom XMPP chat client in JavaScript.  The client required a 100% pure JavaScript solution that could run XMPP over HTTP (using BOSH) and could gracefully handle requests denied by a specialized proxy.  It also had to work flawlessly on Mozilla 1.7.13 and Sea Monkey 1.1.12 running on OpenVMS.  The interface had several user-configurable requirements and utilized jQuery and jQuery UI heavily."
}

sections.projects.elements.push {
	key: "file-transfer"
	name: "Enterprise File Transfer Service Prototype"
	org_key: "mitre"
	description: "Developing a prototype of a client.s desired Enterprise file transfer capability.  This is an integration effort which involves configuring several proxies and a Java (SE, EE, and GWT) front-end to work together in support of client.s specific requirements.  The currently undocumented front-end application is being documented, altered, and debugged in cooperation with its development team."
}

sections.projects.elements.push {
	key: "asdre"
	name: "ASDR&E Cyber Research"
	org_key: "mitre"
	description: "Helped create the Cyber Research Roadmap, a document intended by the Office of the Assistant Secretary of Defense for Research and Engineering to be the 10-year vision/plan for cyber-security research in the DoD."
}

sections.projects.elements.push {
	key: "indicator-webapp"
	name: "Threat Indicator Web Application"
	org_key: "mitre"
	description: "Created an ASP.NET web services based AJAX web application for MITRE.s internal Information Security Operations team.  The application was created from scratch and features public key authentication, a rich JavaScript based client side, ASP.NET web services, and an Oracle database back end.  The web application was utilized to parse, store, and retrieve threat reports and output useful files such as IDS/firewall watch lists for threat analysts and network security operators."
}

sections.projects.elements.push {
	key: "host-sec-collect"
	name: "Windows Host Security Data Collector"
	org_key: "mitre"
	description: "Created a specialized security-related data collection application for retrieving relevant host-based data.  As the software development lead of a team of three, the host collection application was built in C# on the .NET 2.0 framework, with Win32 native API .interop. used in specialized situations.  The application itself was developed as a framework, with collection agents and output formats implemented as DLL plug-ins.  The application was delivered successfully and allows the client maximum flexibility and ease to research collection methodologies for experimental use."
}

sections.projects.elements.push {
	key: "ia-council"
	name: "IA Fellowship Council"
	org_key: "disa"
	description: "Volunteered as the social chair for the IA Fellowship Council (IAFC).  This involved organizing all social events including happy hours, brown bag presentations, and .field trips. - full day events at interesting locations.  As a former scholarship recipient, interviewed a large number of candidates (approximately 10 per year) to be recruited from the NFS Scholarship For Service (SFS)."
}

sections.projects.elements.push {
	key: "ecos"
	name: "Enterprise Collaborative Operational Sensor"
	org_key: "disa"
	description: "The Enterprise Collaborative Operation Sensor (ECOS) is a network security sensor concept in which one physical platform runs multiple applications.  Technical duties included writing analyst software (in Java) to retrieve sensor data, integrating software applications onto the hardware platform, creating shell scripts to secure the end product, deploying the sensors in the field, and documenting architecture designs using MS Visio."
}
