<div align="center">

  # 🗒️ Note Taking

  *Manage notes easily with add, edit, and delete features using Java Servlet, JSP, and Hibernate* 💻

  ![Java Servlet](https://img.shields.io/badge/Java_Servlet-white?style=for-the-badge)
  ![JSP](https://img.shields.io/badge/JSP-white?style=for-the-badge)
  ![Hibernate](https://img.shields.io/badge/hibernate-white?style=for-the-badge)
  ![Tomcat](https://img.shields.io/badge/Tomcat-white?style=for-the-badge)
  ![MySQL](https://img.shields.io/badge/MySQL-white?style=for-the-badge)
  ![Bootstrap](https://img.shields.io/badge/Bootstrap-white?style=for-the-badge)

  <img width="535px" src="https://res.cloudinary.com/dvzhmi7a9/image/upload/v1728300163/NoteTaking/1-Home.png">

  <!-- [![Live Demo](https://img.shields.io/badge/🔗_Visit_website-white?style=flat)](https://e-commerce.enkay.live) -->

</div>

## 📘 Table of Contents
1. [Introduction](#introduction) 🧟
2. [Technologies](#technologies) 💻
3. [Features](#features) 🔎
4. [Development](#development) ✈️
5. [Acknowledgements](#acknowledgements) 💙
6. [Contact](#contact) 🌐

## 🧟 <a name="introduction">Introduction</a>
This project is a simple note-taking application that allows users to add, edit, and delete notes. The application is built using Java Servlet, JSP, and Hibernate. The front-end is designed using Bootstrap. The application uses MySQL as the database.

Through this project, I have learned how to use Java Servlet, JSP, and Hibernate to build a web application. I think this is extremely important knowledge in business practice. To be able to meet the job requirements well, I will definitely continue to strive to improve my knowledge. Keep learning!

## 💻 <a name="technologies">Technologies</a>
- **Java Servlet**: Backend web technology for Java applications.
- **JSP**: Java Server Pages for dynamic web pages.
- **Hibernate**: Object-relational mapping framework for Java.
- **Tomcat**: Web server and servlet container.
- **MySQL**: Database management system.
- **Bootstrap**: Front-end framework for designing responsive web pages.

## 🔎 <a name="features">Features</a>
**🔷 Add Note**: Users can add a new note with a title and content.

**🔷 Edit Note**: Users can edit an existing note by updating the title and content.

**🔷 Delete Note**: Users can delete a note by clicking the delete button.

**🔷 Show Notes**: Users can view all the notes in a list format.

<img width="49%" src="https://res.cloudinary.com/dvzhmi7a9/image/upload/v1728300163/NoteTaking/1-Home.png" alt="Home"> <img width="49%" src="https://res.cloudinary.com/dvzhmi7a9/image/upload/v1728300163/NoteTaking/2-Add.png" alt="Add">

<img width="49%" src="https://res.cloudinary.com/dvzhmi7a9/image/upload/v1728300164/NoteTaking/3-Show.png" alt="Show"> <img width="49%" src="https://res.cloudinary.com/dvzhmi7a9/image/upload/v1728300163/NoteTaking/4-Edit.png" alt="Edit">

## ✈️ <a name="development">Development</a>

### Prerequisites:
- [Java](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)
- [Maven](https://maven.apache.org/download.cgi)
- [MySQL](https://dev.mysql.com/downloads/installer/)

### 1. Clone the repository:
```bash
https://github.com/eNKay2408/Note-Taking.git
cd Note-Taking
```

### 2. Setup hibernate.cfg.xml:
- Update the database `URL`, `username`, and `password`.
- Update the `dialect` based on the database you are using.

### 3. Setup Tomcat server:
- Download Apache Tomcat server and save it in a folder: [Download](https://tomcat.apache.org/download-90.cgi)
- Install `Community Server ConnectorsPreview` extension in VS Code.
- Add Tomcat server in VS Code:
  - Click on the `SERVERS` tab in the bottom left corner of the `EXPLORER` section.
  - Right click on Community Server Connector and click `Create New Server`.
  - Choose `No, use Server on disk`.
  - Select the Tomcat server path and click `Finish`.
- Right click on the Tomcat server and click `Start Server`.

### 4. Build project and add to Tomcat server:
- Run `mvn clean install` to build the project.
- Right click on Tomcat server and click `Add Deployment`.
- Select the `notetaking` folder from the target folder.

### 5. Enable Hot Reload:
- Install `Run on Save` extension in VS Code.
- Add the following configuration in the `settings.json` file:
  ```json
  "emeraldwalk.runonsave": {
      "commands": [
        {
          "match": "\\.(java|jsp|css)$",
          "cmd": "cd ${workspaceRoot}\\notetaking && mvn install"
        }
      ]
  }
  ```
- Add `reloadable="true"` in the `conf/context.xml` file of Tomcat server.
  ```
  <Context reloadable="true">
  ```
- Now, the project will be built and deployed automatically on save.

#### Bonus: You can install `JSP Language Support` extension for JSP syntax highlighting.

### 🌟 I hope it saves you time debugging, as I’ve already gone through the tough parts for you, `XD`. And if you found it useful, a star on this GitHub repository would mean the world to me!

## 💙 <a name="acknowledgements">Acknowledgements</a>

- **[Learn Code With Durgesh](https://www.youtube.com/@LearnCodeWithDurgesh):** For the amazing [tutorial](https://www.youtube.com/watch?v=0nuGm8HBjWk) on building a note-taking application.
- **[Run on Save](https://marketplace.visualstudio.com/items?itemName=emeraldwalk.RunOnSave):** For the VS Code extension to run commands on save.
- **[Community Server ConnectorsPreview](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-community-server-connector):** For the VS Code extension to add Tomcat server.
- **[JSP Language Support](https://marketplace.visualstudio.com/items?itemName=samuel-weinhardt.vscode-jsp-lang):** For the VS Code extension for JSP syntax highlighting.

## 🌐 <a name="contact">Contact</a>

- **Name:** Nguyen Phan Duc Khai - **eNKay**
- **Portfolio:** [enkay.live](https://enkay.live)
- **LinkedIn:** [en-kay](https://www.linkedin.com/in/en-kay/)
- **Email:** [enkay.work@outlook.com](mailto:enkay.work@outlook.com)