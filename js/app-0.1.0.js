/* CONTACT INFO
*/


(function() {
  var contact, sections;

  contact = {
    first: "Michael",
    last: "Spainhower",
    phone: "703-509-2726",
    email: "mcspainhower@gmail.com"
  };

  /* RESUME CONTENT
  */


  sections = {};

  /* Define Sections
  */


  sections.skills = {
    title: "Skills",
    elements: []
  };

  sections.experience = {
    title: "Experience",
    elements: []
  };

  sections.education = {
    title: "Education",
    elements: []
  };

  sections.projects = {
    title: "Projects",
    elements: []
  };

  sections.references = {
    title: "References",
    elements: []
  };

  /* Skills
  */


  sections.skills.elements = [
    {
      name: "Languages",
      elements: {
        javascript: "JavaScript",
        csharp: "C#",
        java: "Java",
        coffeescript: "CoffeScript",
        sqlpl: "SQL(/PL)",
        shell: "Shell",
        c: "C",
        python: "Python",
        cpp: "C++",
        haskell: "Haskell"
      }
    }, {
      name: "Development Libraries",
      elements: {
        jquery: "jQuery",
        angular: "Angular",
        jsjac: "jsjac",
        dotnet: ".NET (2.0-4.0)",
        htmlfive: "HTML5",
        nodejs: "Node.js",
        winthirtytwo: "Win32",
        jce: "Java Crypto Extensions",
        swing: "Swing/AWT",
        pcap: "PCAP",
        stl: "STL",
        xna: "XNA",
        cuda: "CUDA"
      }
    }, {
      name: "Development Support Software",
      elements: {
        git: "Git",
        redmine: "Redmine",
        svn: "SVN",
        msvs: "MS Visual Studio",
        jasmine: "Jasmine",
        gdb: "gdb",
        netbeans: "Netbeans",
        eclipse: "Eclipse"
      }
    }, {
      name: "Server Software",
      elements: {
        apache: "Apache (mod_<many>)",
        openfire: "OpenFire",
        iis: "IIS",
        msdc: "MS DC",
        squid: "Squid",
        jetty: "Jetty"
      }
    }, {
      name: "Virtualization Software",
      elements: {
        vmware: "VMWare (ESX and player)",
        vbox: "Virtual Box",
        imunes: "IMUNES"
      }
    }, {
      name: "Document Software",
      elements: {
        latex: "LaTeX",
        gimp: "GIMP/Photoshop",
        visio: "Microsoft Visio",
        graphviz: "GraphViz",
        gnuplot: "GNUPlot"
      }
    }, {
      name: "Systems Administration Software",
      elements: {
        nixutil: "Standard Unix Utilities",
        nagios: "Nagios",
        dtrace: "DTrace"
      }
    }, {
      name: "Platforms",
      elements: {
        windows: "Windows",
        linux: "Linux",
        bivio: "Bivio 2K/7K",
        endace: "Endace Ninjabox",
        solaris: "Solaris 10 (and TX)",
        aws: "AWS EC2",
        cisco: "Cisco IOS/CatOS"
      }
    }, {
      name: "Technologies",
      elements: {
        webservices: "Web Services",
        ajax: "AJAX",
        xmpp: "XMPP",
        virtualization: "Virtualization",
        tcpip: "TCP/IP",
        pki: "PKI",
        mpls: "MPLS",
        rsvpte: "RSVP(-TE)"
      }
    }, {
      name: "Security Software",
      elements: {
        wireshark: "(Wire/T)shark/tcpdump",
        netwitness: "Netwitness",
        cain: "Cain & Abel",
        ettercap: "Ettercap",
        nmap: "Nmap",
        metasploit: "Metasploit",
        ftk: "FTK",
        encase: "EnCase"
      }
    }
  ];

  /* Experience
  */


  sections.experience.elements.push({
    key: "mitre",
    title: "Information Security Engineer/Scientist",
    organization: "MITRE Corporation",
    start_date: new Date(2010, 2, 1),
    end_date: "Current",
    description: "Tasks in the Defense & Homeland Security department have   included work with the Assistant Secretary of Defense for Research and    Engineering (ASDRE), Cross Boundary Information Sharing Laboratory (XBIS)    , Army Research Laboratory (ARL), and Air Force JSTARS.  Deliverables have     primarily consisted of software and technical documents. Specific projects      are detailed in the Projects section below.  Responsibilities also       include interviewing candidates on the phone and in person regularly.",
    skill_tags: ["javascript", "csharp", "sqlpl", "jquery", "jsjac", "dotnet", "win32", "cuda", "git", "svn", "redmine", "msvs", "jasmine", "gdb", "apache", "openfire", "iis", "msdc", "squid", "jetty", "vmware", "gimp", "visio", "nixutil", "nagios", "windows", "linux", "solaris", "ajax", "webservices", "xmpp", "virtualization", "wireshark"]
  });

  sections.experience.elements.push({
    key: "disa",
    title: "Computer Scientist",
    organization: "Defense Information Systems Agency",
    start_date: new Date(2007, 5, 30),
    end_date: new Date(2010, 1, 31),
    description: "This position involved a variety of duties including   engineering, logistics, project planning, and coordination in support   of the program office for enterprise security sensors. The primary project,   ECOS, entailed deployment of customized network monitoring technology at the   most critical points on the DISN Core. One notable piece of this project was   writing a Java application that presented a Wireshark-like UI and allowed   analysts to retrieve full packet captures from network sensors.",
    skill_tags: ["java", "shell", "c", "swing", "awt", "pcap", "netbeans", "eclipse", "visio", "nixutil", "linux", "bivio", "endace", "tcpip", "wirehark", "netwitness"]
  });

  sections.experience.elements.push({
    key: "disa-trainee",
    title: "Computer Science Trainee",
    organization: "Defense Information System Agency",
    start_date: new Date(2006, 6),
    end_date: new Date(2006, 8),
    description: "The largest project in this position was drafting a completely   original guide for penetration testing Voice over IP (VoIP) systems. The   document was produced for their red and incident response teams, but has   proliferated to other agencies as well.",
    skill_tags: []
  });

  sections.experience.elements.push({
    key: "clear-channel",
    title: "Engineer Assistant",
    organization: "Clear Channel Wireless",
    start_date: new Date(2001, 12),
    end_date: new Date(2004, 12),
    description: "Installed equipment, deployed audio, video, CAT5 and fiber   cables, and terminated video and network cables in a new facility in Dec   2001. A summer 2002 internship involved researching performance,   functionality, and dependability of wireless WAN solutions and reporting   the results to the VP of DTV Engineering.",
    skill_tags: []
  });

  sections.experience.elements.push({
    key: "biglots",
    title: "Associate",
    organization: "Big Lots!",
    start_date: new Date(2002, 3, 25),
    end_date: new Date(2005, 5),
    description: "Insert BL desc",
    skill_tags: []
  });

  /* Education
  */


  sections.education.elements.push({
    key: "tu-ms",
    organization: "University of Tulsa",
    location: "Tulsa, OK",
    end_date: new Date(2007, 5),
    gpa: 4,
    degree: "Masters of Science in Computer Science",
    description: "Thesis Topic: Security Issues Related to RSVP-TE Signaling in   MPLS Networks",
    skill_tags: ["java", "c", "eclipse", "vmware", "vbox", "imunes", "latex", "graphviz", "gnuplot", "nixutil", "windows", "linux", "virtualization", "tcpip", "mpls", "rsvpte", "wireshark", "cain", "ettercap", "nmap", "metasploit"]
  });

  sections.education.elements.push({
    key: "tu-bs",
    organization: "University of Tulsa",
    location: "Tulsa, OK",
    end_date: new Date(2005, 12),
    gpa: 3.769,
    degree: "Bachelors of Science in Computer Science",
    description: "Minor: Mathematics",
    skill_tags: ["java", "python", "jce", "eclipse", "latex", "linux", "windows", "pki", "wireshark", "ftk", "encase"]
  });

  sections.education.elements.push({
    key: "tulsa-tech",
    organization: "Tulsa Technology Center",
    location: "Tulsa, OK",
    end_date: new Date(2002, 5),
    gpa: 4,
    degree: "Cisco Certified Network Associate and Internet Security",
    description: "Two academic years total during high school",
    skill_tags: ["linux", "cisco", "tcpip", "wireshark", "namp"]
  });

  /* Projects
  */


  sections.projects.elements.push({
    key: "xmpp-web",
    name: "XMPP Web Client",
    org_key: "mitre",
    description: "Worked with one other developer and one tester to create a   custom XMPP chat client in JavaScript.  The client required a 100% pure   JavaScript solution that could run XMPP over HTTP (using BOSH) and could   gracefully handle requests denied by a specialized proxy.  It also had   to work flawlessly on Mozilla 1.7.13 and Sea Monkey 1.1.12 running on   OpenVMS.  The interface had several user-configurable requirements and   utilized jQuery and jQuery UI heavily.",
    skill_tags: ["javascript", "jquery", "jsjac", "git", "redmine", "jasmine", "apache", "openfire", "vmware", "nixutil", "linux", "ajax", "xmpp", "wireshark", "jetty"]
  });

  sections.projects.elements.push({
    key: "file-transfer",
    name: "Enterprise File Transfer Service Prototype",
    org_key: "mitre",
    description: "Developing a prototype of a client's desired Enterprise file   transfer capability.  This is an integration effort which involves   configuring several proxies and a Java (SE, EE, and GWT) front-end to work   together in support of client's specific requirements.  The currently   undocumented front-end application is being documented, altered, and   debugged in cooperation with its development team.",
    skill_tags: ["java", "nixutil", "linux", "pki"]
  });

  sections.projects.elements.push({
    key: "asdre",
    name: "Defense Dept. Cyber Research Roadmap",
    org_key: "mitre",
    description: "Helped create the Cyber Research Roadmap, a document intended   by the Office of the Assistant Secretary of Defense for Research and   Engineering to be the 10-year vision/plan for cyber-security research in   the DoD.",
    skill_tags: ["gimp"]
  });

  sections.projects.elements.push({
    key: "indicator-webapp",
    name: "Threat Indicator Web Application",
    org_key: "mitre",
    description: "Created an ASP.NET web services based AJAX web application for   MITRE's internal Information Security Operations team.  The application was   created from scratch and features public key authentication, a rich   JavaScript based client side, ASP.NET web services, and an Oracle database   back end.  The web application was utilized to parse, store, and retrieve   threat reports and output useful files such as IDS/firewall watch lists for   threat analysts and network security operators.",
    skill_tags: ["javascript", "csharp", "sqlpl", "jquery", "dotnet", "html5", "svn", "msvs", "iis", "windows", "webservices", "ajax", "pki"]
  });

  sections.projects.elements.push({
    key: "host-sec-collect",
    name: "Windows Host Security Data Collector",
    org_key: "mitre",
    description: "Created a specialized security-related data collection   application for retrieving relevant host-based data.  As the software   development lead of a team of three, the host collection application was   built in C# on the .NET 2.0 framework, with Win32 native API .interop. used   in specialized situations.  The application itself was developed as a   framework, with collection agents and output formats implemented as DLL   plug-ins.  The application was delivered successfully and allows the client   maximum flexibility and ease to research collection methodologies for   experimental use.",
    skill_tags: ["csharp", "cpp", "dotnet", "winthirtytwo", "svn", "msvs", "windows"]
  });

  sections.projects.elements.push({
    key: "ia-council",
    name: "IA Fellowship Council",
    org_key: "disa",
    description: "Volunteered as the social chair for the IA Fellowship Council   (IAFC).  This involved organizing all social events including happy hours,   brown bag presentations, and 'field trips' - full day events at interesting   locations.  As a former scholarship recipient, interviewed a large number   of candidates (approximately 10 per year) to be recruited from the NFS   Scholarship For Service (SFS).",
    skill_tags: []
  });

  sections.projects.elements.push({
    key: "ecos",
    name: "Enterprise Collaborative Operational Sensor",
    org_key: "disa",
    description: "The Enterprise Collaborative Operation Sensor (ECOS) is a   network security sensor concept in which one physical platform runs multiple   applications.  Technical duties included writing analyst software (in Java)   to retrieve sensor data, integrating software applications onto the hardware   platform, creating shell scripts to secure the end product, deploying the   sensors in the field, and documenting architecture designs using MS Visio.",
    skill_tags: ["java", "shell", "swing", "pcap", "netbeans", "visio", "nixutil", "linux", "bivio", "endace", "tcip", "pki", "wireshark", "netwitness", "cain", "ettercap"]
  });

  /* ANGULAR
  */


  angular.module('resumeos.data', []).constant('contact', contact).constant('sections', sections);

}).call(this);

(function() {
  var arrayify, init_sect_ctrl, resumeos_mod,
    __hasProp = {}.hasOwnProperty,
    __slice = [].slice,
    __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  resumeos_mod = angular.module('resumeos', ['resumeos.data']);

  resumeos_mod.config(function($routeProvider) {
    $routeProvider.when('/resume', {
      controller: ListAllCtrl,
      template: 'list-all.html'
    }).when('/resume/skills', {
      controller: SkillsCtrl,
      template: 'list-skills.html'
    }).when('/resume/references', {
      controller: RefCtrl,
      template: 'list-refs.html'
    }).when('/resume/projects', {
      controller: ProjectsCtrl,
      template: 'list-projects.html'
    }).when('/resume/experience', {
      controller: ExpCtrl,
      template: 'list-exp.html'
    }).when('/resume/education', {
      controller: EduCtrl,
      template: 'list-edu.html'
    }).when('/resume/:section/:key', {
      controller: RelationCtrl,
      template: 'relation.html'
    }).otherwise({
      redirectTo: '/resume'
    });
    return this;
  });

  this.ContactCtrl = function($scope, contact) {
    $scope.contact = contact;
    return this;
  };

  this.ListAllCtrl = function($scope, $location, $rootScope, sections) {
    $rootScope.cmd = "ls ~" + ($location.path());
    $rootScope.back_target = "#/resume/";
    $scope.sections = sections;
    return this;
  };

  /*
  # Turn object into an array
  */


  arrayify = function(obj) {
    var key, toreturn, val;

    toreturn = [];
    for (key in obj) {
      if (!__hasProp.call(obj, key)) continue;
      val = obj[key];
      toreturn.push({
        key: key,
        val: val
      });
    }
    return toreturn;
  };

  /*
  # Common initialization for section controllers
  */


  init_sect_ctrl = function($scope, $location, $rootScope, sections) {
    var basepath, sect_name, _i, _ref;

    _ref = $location.path().split("/"), basepath = 2 <= _ref.length ? __slice.call(_ref, 0, _i = _ref.length - 1) : (_i = 0, []), sect_name = _ref[_i++];
    $rootScope.back_target = "#" + (basepath.join('/'));
    $scope[sect_name] = sections[sect_name].elements;
    $rootScope.cmd = "ls ~" + ($location.path());
    return this;
  };

  this.SkillsCtrl = function($scope, $location, $rootScope, sections) {
    init_sect_ctrl($scope, $location, $rootScope, sections);
    $scope.arrayify = arrayify;
    return this;
  };

  this.RefCtrl = function($scope, $location, $rootScope, sections) {
    init_sect_ctrl($scope, $location, $rootScope, sections);
    return this;
  };

  this.ProjectsCtrl = function($scope, $location, $rootScope, sections) {
    var org, _i, _len, _ref;

    init_sect_ctrl($scope, $location, $rootScope, sections);
    $scope.orgs = {};
    _ref = sections.experience.elements.concat(sections.education.elements);
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      org = _ref[_i];
      $scope.orgs[org.key] = org;
    }
    return this;
  };

  this.ExpCtrl = function($scope, $location, $rootScope, sections) {
    init_sect_ctrl($scope, $location, $rootScope, sections);
    return this;
  };

  this.EduCtrl = function($scope, $location, $rootScope, sections) {
    init_sect_ctrl($scope, $location, $rootScope, sections);
    return this;
  };

  this.RelationCtrl = function($scope, $location, $routeParams, $rootScope, sections) {
    var basepath, curr_skill_tags, degree, edu, exp, item, job, new_skill_fam, org, org_key, prj, proj, ref, refs, route_key, sect_name, skill_fam, skill_tag, _i, _j, _k, _l, _len, _len1, _len2, _ref, _ref1, _ref2;

    $rootScope.cmd = "~/resume/bin/find_related " + $routeParams.key;
    _ref = $location.path().split("/"), basepath = 3 <= _ref.length ? __slice.call(_ref, 0, _i = _ref.length - 2) : (_i = 0, []), sect_name = _ref[_i++], route_key = _ref[_i++];
    $rootScope.back_target = "#" + (basepath.join('/')) + "/" + sect_name;
    $scope.orgs = {};
    _ref1 = sections.experience.elements.concat(sections.education.elements);
    for (_j = 0, _len = _ref1.length; _j < _len; _j++) {
      org = _ref1[_j];
      $scope.orgs[org.key] = org;
    }
    edu = sections.education;
    exp = sections.experience;
    prj = sections.projects;
    refs = sections.references;
    switch (sect_name) {
      case "skills":
        curr_skill_tags = [route_key];
        $scope.education = (function() {
          var _k, _len1, _ref2, _results;

          _ref2 = edu.elements;
          _results = [];
          for (_k = 0, _len1 = _ref2.length; _k < _len1; _k++) {
            degree = _ref2[_k];
            if (__indexOf.call(degree.skill_tags, route_key) >= 0) {
              _results.push(degree);
            }
          }
          return _results;
        })();
        $scope.experience = (function() {
          var _k, _len1, _ref2, _results;

          _ref2 = exp.elements;
          _results = [];
          for (_k = 0, _len1 = _ref2.length; _k < _len1; _k++) {
            job = _ref2[_k];
            if (__indexOf.call(job.skill_tags, route_key) >= 0) {
              _results.push(job);
            }
          }
          return _results;
        })();
        $scope.projects = (function() {
          var _k, _len1, _ref2, _results;

          _ref2 = prj.elements;
          _results = [];
          for (_k = 0, _len1 = _ref2.length; _k < _len1; _k++) {
            proj = _ref2[_k];
            if (__indexOf.call(proj.skill_tags, route_key) >= 0) {
              _results.push(proj);
            }
          }
          return _results;
        })();
        $scope.references = (function() {
          var _k, _len1, _ref2, _results;

          _ref2 = refs.elements;
          _results = [];
          for (_k = 0, _len1 = _ref2.length; _k < _len1; _k++) {
            ref = _ref2[_k];
            if (__indexOf.call(ref.skill_tags, route_key) >= 0) {
              _results.push(ref);
            }
          }
          return _results;
        })();
        break;
      case "education":
      case "experience":
        $scope[sect_name] = (function() {
          var _k, _len1, _ref2, _results;

          _ref2 = sections[sect_name].elements;
          _results = [];
          for (_k = 0, _len1 = _ref2.length; _k < _len1; _k++) {
            item = _ref2[_k];
            if (item.key === route_key) {
              _results.push(item);
            }
          }
          return _results;
        })();
        curr_skill_tags = $scope[sect_name][0].skill_tags;
        $scope.projects = (function() {
          var _k, _len1, _ref2, _results;

          _ref2 = sections.projects.elements;
          _results = [];
          for (_k = 0, _len1 = _ref2.length; _k < _len1; _k++) {
            proj = _ref2[_k];
            if (proj.org_key === route_key) {
              _results.push(proj);
            }
          }
          return _results;
        })();
        break;
      case "projects":
        $scope.projects = (function() {
          var _k, _len1, _ref2, _results;

          _ref2 = sections.projects.elements;
          _results = [];
          for (_k = 0, _len1 = _ref2.length; _k < _len1; _k++) {
            proj = _ref2[_k];
            if (proj.key === route_key) {
              _results.push(proj);
            }
          }
          return _results;
        })();
        curr_skill_tags = $scope.projects[0].skill_tags;
        org_key = $scope.projects[0].org_key;
        $scope.education = (function() {
          var _k, _len1, _ref2, _results;

          _ref2 = sections.education.elements;
          _results = [];
          for (_k = 0, _len1 = _ref2.length; _k < _len1; _k++) {
            degree = _ref2[_k];
            if (degree.key === org_key) {
              _results.push(degree);
            }
          }
          return _results;
        })();
        $scope.experience = (function() {
          var _k, _len1, _ref2, _results;

          _ref2 = sections.experience.elements;
          _results = [];
          for (_k = 0, _len1 = _ref2.length; _k < _len1; _k++) {
            job = _ref2[_k];
            if (job.key === org_key) {
              _results.push(job);
            }
          }
          return _results;
        })();
        break;
      default:
        if (typeof console !== "undefined" && console !== null) {
          console.error("Why is section name " + sect_name + "? Not valid!");
        }
    }
    new_skill_fam = {
      name: "All",
      elements: {}
    };
    $scope.skills = [new_skill_fam];
    _ref2 = sections.skills.elements;
    for (_k = 0, _len1 = _ref2.length; _k < _len1; _k++) {
      skill_fam = _ref2[_k];
      for (_l = 0, _len2 = curr_skill_tags.length; _l < _len2; _l++) {
        skill_tag = curr_skill_tags[_l];
        if (skill_fam.elements[skill_tag] != null) {
          new_skill_fam.elements[skill_tag] = skill_fam.elements[skill_tag];
        }
      }
    }
    $scope.arrayify = arrayify;
    return this;
  };

}).call(this);
