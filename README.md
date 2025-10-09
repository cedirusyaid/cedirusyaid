<h1 align="center">👋 Hello, I'm Rusyaid! </h1>
<h3 align="center">A Passionate Full-Stack Developer from Indonesia</h3>

<p align="center">
  <a href="https://github.com/cedirusyaid">
    <img src="https://komarev.com/ghpvc/?username=cedirusyaid&color=blue&style=flat-square" alt="Profile views" />
  </a>
  <a href="https://github.com/cedirusyaid?tab=followers">
    <img src="https://img.shields.io/github/followers/cedirusyaid?label=Followers&style=social" alt="Followers" />
  </a>
</p>

---

## 🚀 About Me

```php
<?php

class About extends Developer {
    public $name = "Rusyaid";
    public $role = "Full-Stack Developer";
    public $passion = "Building impactful solutions";
    public $location = "Indonesia";
    
    public function __construct() {
        $this->skills = [
            'backend' => ['PHP', 'CodeIgniter', 'MySQL'],
            'frontend' => ['JavaScript', 'HTML', 'CSS'],
            'tools' => ['Git', 'Linux', 'Shell Script'],
            'learning' => ['Python', 'Open Source']
        ];
    }
    
    public function sayHello() {
        return "Let's build something amazing together!";
    }
}




💻 Tech Stack
🛠️ Languages & Frameworks
<p align="left"> <img src="https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white" /> <img src="https://img.shields.io/badge/CodeIgniter-EF4223?style=for-the-badge&logo=codeigniter&logoColor=white" /> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" /> <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white" /> <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white" /> <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white" /> </p>
🗄️ Databases & Tools
<p align="left"> <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" /> <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" /> <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" /> <img src="https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white" /> </p>
📊 GitHub Analytics
<p align="center"> <img width="48%" src="https://github-readme-stats.vercel.app/api?username=cedirusyaid&show_icons=true&theme=radical&hide_border=true" /> <img width="48%" src="https://github-readme-streak-stats.herokuapp.com/?user=cedirusyaid&theme=radical&hide_border=true" /> </p><p align="center"> <img width="40%" src="https://github-readme-stats.vercel.app/api/top-langs/?username=cedirusyaid&layout=compact&theme=radical&hide_border=true" /> </p>
🌟 Current Focus
🔭 I'm currently working on open source projects
🌱 I'm learning Python and advanced web development
👯 I'm looking to collaborate on meaningful projects
💬 Ask me about PHP, CodeIgniter, Web Development
📫 How to reach me: cedirusyaid@gmail.com

📫 Let's Connect!
<p align="left"> <a href="mailto:cedirusyaid@gmail.com"> <img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white" /> </a> <a href="#"> <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" /> </a> <a href="https://github.com/cedirusyaid"> <img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" /> </a> </p>

name: Generate Snake Animation

on:
  schedule:
    - cron: "0 0 * * *"
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: Platane/snk@master
        with:
          github_user_name: cedirusyaid
          svg_out_path: dist/github-contribution-grid-snake.svg
      - uses: crazy-max/ghaction-github-pages@v2.1.3
        with:
          target_branch: output
          build_dir: dist
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}

