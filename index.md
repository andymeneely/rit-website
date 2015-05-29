---
layout: page
---
# Interests

Empirical software engineering,
software security,
collaborative software development,
open source development,
socio-technical factors,
metrics and measurement,
applied machine learning and data mining

# Bio
Andy has been an assistant professor of Software Engineering at RIT since 2011. Prior to then, Andy received his PhD in Computer Science at <a href="http://csc.ncsu.edu">North Carolina State University</a> in Raleigh, North Carolina under <a href="http://collaboration.csc.ncsu.edu/laurie">Laurie Williams</a>. His doctoral dissertation, titled <em>Investigating the Relationship between Developer Collaboration and Software Security</em> involved formulating metrics to examine the socio-technical structure of software development teams using social network analysis. His research has resulted in many top-tier academic <a href="publications.php">publications</a>. He also earned his Masters at NCSU in 2008. Andy received his Bachelors of Arts at <a href="http://cs.calvin.edu/">Calvin College</a>, Grand Rapids, MI where he was a double-major in Computer Science and Mathematics.

# Recent Publications
<ul>
  {% for post in site.posts limit:5 %}
    <li><a href="{{ site.baseurl}}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

