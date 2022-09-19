<p align="center">
  <a href="https://supportukrainenow.org" target="_blank">
    <img src="./images/standwithukraine.png" alt="#StandWithUkraine" width="100%">
  </a>
</p>
<br/>
<p align="center">
  <a href="http://github.com/luisaveiro/playground">
    <img
      src="./images/playground.svg" 
      alt="Playground" 
      width="35%">
  </a>
</p>

<h4 align="center">
  Docker Compose collection of tech stack samples
</h4>

<p align="center">
  <a href="#about">About</a> •
  <a href="#disclaimer">Disclaimer</a> •
  <a href="#getting-started">Getting Started</a> •
  <a href="#download">Download</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#samples">Samples</a> •
  <a href="#faq">FAQ</a>
</p>
<p align="center">
  <a href="#useful-tips">Useful Tips</a> •
  <a href="#changelog">Changelog</a> •
  <a href="#contributing">Contributing</a> •
  <a href="#security-vulnerabilities">Security Vulnerabilities</a> •
  <a href="#credits">Credits</a> •
  <a href="#Sponsor">Sponsor</a> •
  <a href="#license">License</a>
</p>

## About

This repository is a collection of Docker Compose files for tech stack samples, 
including frameworks, blog platforms, CMS, e-commerce, headless CMS, and 
"Hello, World!" examples for most common programming languages. The samples 
offer a simple approach to setting up their respective tech stacks for a local 
environment.

**What is the purpose of the Playground collection?**  

The ***Playground*** collection provides a starting point for how to integrate 
different services and allows you to learn and experiment with tech stacks. By 
having the tech stack samples run in a Docker environment, you don't have to 
install additional dependencies before you can get started.

## Disclaimer

> **Note**
> : The ***Playground*** samples are intended for use in local development 
environments such as prototyping, tinkering with software stacks, etc. These 
samples <ins>**MUST NOT**</ins> be deployed in production environments.

## Getting Started

You will need to make sure your system meets the following prerequisites:

- Docker Engine >= 20.10.00

This repository utilizes [Docker](https://www.docker.com/) to run the tech 
stack samples. So, before using any of the ***Playground*** samples, make sure 
you have Docker installed on your system.

## Download

You can clone the latest version of ***Playground*** repository for macOS, 
Linux and Windows.

```bash
# Clone this repository.
$ git clone git@github.com:luisaveiro/playground.git --branch main --single-branch
```

All ***Playground*** samples can be found in `samples` directory.

```bash
# Navigate to the samples
$ cd playground/samples
```

## How To Use

There are a few steps you need to follow before you have a ***Playground*** 
sample set up and running in a Docker container. I have outlined the included 
files you would need to take to get started.

#### 1. <ins>DotEnv</ins>

You can override the variables in the Docker Compose file, e.g. container name, 
network name and port mapping. All ***Playground*** samples include a DotEnv 
example file (`.env.example`) that you can copy to create your DotEnv file and 
override the Docker Compose variables.

#### 2. <ins>Dockerfile</ins>

Some tech stacks require additional dependencies, e.g. libraries and CLI tools. 
However, not all tech stacks offer an official Docker image. I have included a 
Dockerfile for ***Playground*** samples that need a Docker image with the 
necessary dependencies.

The Docker Compose file and Makefile automatically build the Docker image from 
the Dockerfile.

#### 3. <ins>Makefile</ins>

The Makefile offers a developer-friendly approach to automate the set up of 
***Playground*** samples. Some tech stacks CLI tools have a setup command that 
offers an initial starter app.

If the ***Playground*** sample has a Dockerfile, the Makefile will build the 
Docker image from the Dockerfile. The Makefile will execute the setup command 
in a Docker container. You will need to follow the CLI installation steps.

The Makefile will create and attach the `CODE_DIR` (default `code` directory) 
as a Docker volume. Your new ***Playground*** sample source code will be stored 
in the `CODE_DIR`.

In each ***Playground*** samples' Makefile I have included an example on how 
to execute the make command. You will need to execute the make command before 
you can have the ***Playground*** sample set up and running in a Docker 
container.

#### 4. <ins>Docker Compose</ins>

Each ***Playground*** sample has its individual Docker Compose file. All 
samples' services will run in separate Docker containers. ***Playground*** 
sample source code will be stored in the `CODE_DIR` (default `code` directory) 
as a Docker volume.

***Playground*** samples that do not have have a Makefile will automatically 
execute the setup command of their respective tech stacks.

To start a ***Playground*** sample, you can run the following command:

```bash
$ docker compose up

# or run container in detached mode
$ docker compose up -d
```

## Samples

There are currently **62** samples included in the ***Playground*** repository. 
The ***Playground*** samples are categorised into one of the following tech 
stacks:

<details>
<summary><b>Programming Languages</b></summary>
  <ul>
    <li>Bash</li>
    <li>C</li>
    <li>C++</li>
    <li>Dart</li>
    <li>Elixir</li>
    <li>Erlang</li>
    <li>Golang</li>
    <li>Java</li>
    <li>PHP (Apache)</li>
    <li>PHP (CLI)</li>
    <li>Python</li>
    <li>Ruby</li>
    <li>Rust</li>
    <li>Swift</li>
  </ul>
</details>

<details>
<summary><b>Analytics Platforms</b></summary>
  <ul>
    <li>Ackee</li>
  </ul>
</details>

<details>
<summary><b>Blogs</b></summary>
  <ul>
    <li>Ghost</li>
    <li>Jekyll</li>
  </ul>
</details>

<details>
<summary><b>Content Management Systems (CMS)</b></summary>
  <ul>
    <li>ApostropheCMS</li>
    <li>Drupal</li>
    <li>Joomla</li>
    <li>WordPress</li>
  </ul>
</details>

<details>
<summary><b>CSS Frameworks</b></summary>
  <ul>
    <li>Bootstrap</li>
    <li>Tailwind CSS</li>
  </ul>
</details>

<details>
<summary><b>E-commerce</b></summary>
  <ul>
    <li>PrestaShop</li>
  </ul>
</details>

<details>
<summary><b>Frameworks</b></summary>
  <ul>
    <li>Angular</li>
    <li>Django</li>
    <li>Egg</li>
    <li>Express</li>
    <li>Fastify</li>
    <li>Fiber</li>
    <li>Flask</li>
    <li>Fresh</li>
    <li>Gin</li>
    <li>Lit (Vite)</li>
    <li>NestJS</li>
    <li>Preact (Vite)</li>
    <li>React (Vite)</li>
    <li>Revel</li>
    <li>Rocket</li>
    <li>Solid</li>
    <li>Svelte (Vite)</li>
    <li>Vue (Vite)</li>
  </ul>
</details>

<details>
<summary><b>Full Stack Frameworks (FSF)</b></summary>
  <ul>
    <li>Blitz</li>
    <li>Copper</li>
    <li>Next.js</li>
    <li>Nuxt</li>
    <li>Redwood</li>
    <li>Remix</li>
    <li>Ruby on Rails</li>
    <li>SvelteKit</li>
  </ul>
</details>

<details>
<summary><b>Headless CMS</b></summary>
  <ul>
    <li>Directus</li>
    <li>Strapi</li>
    <li>Tina</li>
  </ul>
</details>

<details>
<summary><b>JavaScript Runtimes</b></summary>
  <ul>
    <li>Bun</li>
    <li>Deno</li>
    <li>Node</li>
  </ul>
</details>

<details>
<summary><b>Slides</b></summary>
  <ul>
    <li>Slidev</li>
  </ul>
</details>

<details>
<summary><b>Static Site Generators (SSG)</b></summary>
  <ul>
    <li>Astro</li>
    <li>Docusaurus</li>
    <li>Gatsby</li>
    <li>Hugo</li>
    <li>Lume</li>
    <li>VuePress</li>
  </ul>
</details>

<details>
<summary><b>Web Servers</b></summary>
  <ul>
    <li>Apache</li>
    <li>Caddy</li>
    <li>Nginx</li>
  </ul>
</details>

## FAQ

**Q:** Are you planning to add additional tech stack samples?  
**A:** I do have a roadmap for adding additional tech stack samples to 
***Playground***. However, you can suggest a tech stack in the 
[Discussion section](https://github.com/luisaveiro/playground/discussions/categories/ideas) 
and I will try to include the sample as part of ***Playground*** 
collection.

**Q:** Are you able to provide "beginner" guides for each sample?  
**A:** I will be providing additional readme files for each ***Playground*** 
sample that will include how to get started and use the sample.

**Q:** Are you able to provide "How-to" guides to combine multiple samples?  
**A:** Yes, I will be including additional guides to help developers that want 
to combine two or more ***Playground*** samples.

## Useful Tips

[Fig](https://withfig.com/) is a CLI tool that adds VSCode-style autocomplete 
to your existing Terminal. You can build autocomplete functionality for any CLI 
with javascript, not bash. You can share it with your team, or contribute to 
Fig open source specs for tools like `git`, `aws`, `kubectl`.

[Localhost Databases](http://github.com/luisaveiro/localhost-databases) is a 
collection of Docker Compose files for relational and NoSQL databases. Which 
aims to offer a simple approach to setting up databases for a local environment.

[Docker Reverse Proxy](https://github.com/luisaveiro/docker-reverse-proxy) 
offers a simple approach to having a Caddy Server as a local reverse proxy for 
your Docker containers.

[Programiz](https://www.programiz.com/) let's you learn to code in Python, 
C/C++, Java, and other popular programming languages with their 
beginner-friendly tutorials and examples.

[Kodekloud.com](https://kodekloud.com) offer courses with real scenarios and 
practice labs to become a DevOps expert. They provide a learning path to guide 
you in your journey in DevOps from the basics concepts to in-depth advanced 
topics to help you prepare for your certifications.

Kodekloud has a free [Docker For The Absolute Beginner](https://kodekloud.com/p/docker-for-the-absolute-beginner-hands-on) 
course. The course will help you practice Docker commands and developing your 
own images using Dockerfiles and practice Docker Compose.

**Please note:** Most of the courses on Kodekloud.com require you to pay for a 
subscription to access the course content and materials.

## Changelog

Please see [CHANGELOG](CHANGELOG.md) for more information what has changed 
recently.

## Contributing

I encourage you to contribute to ***Playground***! Contributions are what make 
the open source community such an amazing place to be learn, inspire, and 
create. Any contributions you make are **greatly appreciated**.

Please check out the [contributing to Playground guide](.github/CONTRIBUTING.md) 
for guidelines about how to proceed.

## Security Vulnerabilities

Trying to report a possible security vulnerability in ***Playground*** samples? 
Please check out our [security policy](.github/SECURITY.md) for guidelines 
about how to proceed.

## Credits

The illustration used in the project is from 
[unDraw (created by Katerina Limpitsouni)](https://undraw.co/). All product 
names, logos, brands, trademarks and registered trademarks are property of 
their respective owners.

## Sponsor

Do you like this project? Support it by donating.

<a href="https://www.buymeacoffee.com/luisaveiro">
  <img src="./images/bmc-button.svg" alt="Code Review" width="144">
</a>


## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

---

<p align="center">
  <a href="http://github.com/luisaveiro" target="_blank">GitHub</a> •
  <a href="https://uk.linkedin.com/in/luisaveiro" target="_blank">LinkedIn</a> •
  <a href="https://twitter.com/luisdeaveiro" target="_blank">Twitter</a>
</p>
