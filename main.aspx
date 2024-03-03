<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Port_folio.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
     <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My Portfolio</title>
    <link rel="stylesheet" href="~/cssjs/style.css" />
    <link rel="stylesheet" href="~/cssjs/mediaqueries.css" />
     <style>
        /* Style for the list */
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            padding: 10px 0;
            border-bottom: 1px solid #ccc;
        }
        li:last-child {
            border-bottom: none;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
       
    <nav id="desktop-nav">
      <div class="logo">Peyal.</div>
      <div>
        <ul class="nav-links">
          <li><a href="#about">About</a></li>
          <li><a href="#experience">Experience</a></li>
            <li><a href="#hobby">Hobby</a></li>
          <li><a href="#projects">Projects</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>
    </nav>
    <nav id="hamburger-nav">
      <div class="logo">Peyal.</div>
      <div class="hamburger-menu">
        <div class="hamburger-icon" onclick="toggleMenu()">
          <span></span>
          <span></span>
          <span></span>
        </div>
        <div class="menu-links">
          <li><a href="#about" onclick="toggleMenu()">About</a></li>
          <li><a href="#experience" onclick="toggleMenu()">Experience</a></li>
             <li><a href="#hobby" onclick="toggleMenu()">Hobby</a></li>
          <li><a href="#projects" onclick="toggleMenu()">Projects</a></li>
          <li><a href="#contact" onclick="toggleMenu()">Contact</a></li>
        </div>
      </div>
    </nav>
    <section id="profile">
      <div class="section__pic-container">
        <img src="./assets/p_pic.jpg" alt="Peyal profile picture" />
      </div>
      <div class="section__text">
        <p class="section__text__p1">Hello, I'm</p>
       <h1 class="title">Peyal Saha</h1>
        <div class="animated-text">
          I'm a <span></span>
      </div>
        <div class="btn-container">
          <button
            class="btn btn-color-2"
            onclick="window.open('./assets/peyal_resume.pdf')"
          >
            Download CV
          </button>
          <asp:Button ID="MoveToContactButton" runat="server" Text="Contact Info" CssClass="btn btn-color-1" OnClientClick="javascript:window.location.hash = 'contact'; return false;" />

           
        </div>
        <div id="socials-container">
          <img
            src="./assets/linkedin.png"
            alt="My LinkedIn profile"
            class="icon"
            onclick="location.href='https://www.linkedin.com/in/peyal-saha-4554b222a/'"
          />
          <img
            src="./assets/github.png"
            alt="My Github profile"
            class="icon"
            onclick="location.href='https://github.com/joker2353'"
          />
        </div>
      </div>
    </section>
    <section id="about">
      <p class="section__text__p1">Get To Know More</p>
      <h1 class="title">About Me</h1>
      <div class="section-container">
        <div class="section__pic-container">
          <img
            src="./assets/a_pic.jpeg"
            alt="Profile picture"
            class="about-pic"
          />
        </div>
        <div class="about-details-container">
          <div class="about-containers">
            <div class="details-container">
              <img
                src="./assets/experience.png"
                alt="Experience icon"
                class="icon"
              />
              <h3>Experience</h3>
              <p>1+ years <br />Android Development</p>
            </div>
            <div class="details-container">
              <img
                src="./assets/education.png"
                alt="Education icon"
                class="icon"
              />
              <h3>Education</h3>
              <p>HSC<br />B.Sc. Bachelors Degree</p>
            </div>
          </div>
          <div class="text-container">
            <p>
             <asp:Label ID="ab" runat="server" Text="This is a label"></asp:Label>
              <asp:Label ID="InfoLabel" runat="server" Text=""></asp:Label>
            </p>
          </div>
        </div>
      </div>
      <img
        src="./assets/arrow.png"
        alt="Arrow icon"
        class="icon arrow"
        onclick="location.href='./#experience'"
      />
    </section>
    <section id="experience">
      <p class="section__text__p1">Explore My</p>
      <h1 class="title">Experience</h1>
      <div class="experience-details-container">
        <div class="about-containers">
          <div class="details-container">
            <h2 class="experience-sub-title">Frontend Development</h2>
            <div class="article-container">
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>HTML</h3>
                  <p>Experienced</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>CSS</h3>
                  <p>Experienced</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>KOTLIN</h3>
                  <p>Intermediate</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>JavaScript</h3>
                  <p>Basic</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>TypeScript</h3>
                  <p>Basic</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>REACT</h3>
                  <p>Intermediate</p>
                </div>
              </article>
            </div>
          </div>
          <div class="details-container">
            <h2 class="experience-sub-title">Backtend Development</h2>
            <div class="article-container">
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>MySQL</h3>
                  <p>Intermediate</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>Node JS</h3>
                  <p>Basic</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>Express JS</h3>
                  <p>Basic</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>Git</h3>
                  <p>Intermediate</p>
                </div>
              </article>
            </div>
          </div>
        </div>
      </div>
      <img
        src="./assets/arrow.png"
        alt="Arrow icon"
        class="icon arrow"
        onclick="location.href='./#projects'"
      />




      <section id="hobby">
        <p class="section__text__p1">Explore My</p>
        <h1 class="title">Hobbies</h1>
        <div class="experience-details-container">
          <div class="about-containers">
            <div class="details-container">
              <h2 class="experience-sub-title">Gaming</h2>
              <div class="article-container">
                <p>
                    <h5>List of Games I would like to play</h5> </p><br />
                   
    <P align="left"> <ul>
        <li>PUBG</li>
        <li>Counter-Strike</li>
        <li>Asphalt 9</li>
        <li>Mortal Kombat X</li>
    </ul>
                        </P>
               
                  
               
              </div>
            </div>
            <div class="details-container">
              <h2 class="experience-sub-title">Travelling</h2>
              <div class="article-container">
                  <p>
                      <asp:Label ID="hobbs" runat="server" Text="This is a label"></asp:Label>
                  </p>
                
              </div>
            </div>
          </div>
        </div>
        
    </section>
    <section id="projects">
      <p class="section__text__p1">Browse My Recent</p>
      <h1 class="title">Projects</h1>
      <div class="experience-details-container">
        <div class="about-containers">
          <div class="details-container color-container">
            <div class="article-container">
              <img
                src="./assets/puzzle.jpg"
                alt="Puzzle Game"
                class="project-img"
              />
            </div>
            <h2 class="experience-sub-title project-title">Puzzle Game</h2>
            <div class="btn-container">
             <asp:Button ID="GithubButton" runat="server" Text="Github" CssClass="btn btn-color-2 project-btn" OnClick="GithubButton_Click" />

              </button>
              <button
                class="btn btn-color-2 project-btn"
                onclick="location.href='https://github.com/'"
              >
                Live Demo
              </button>
            </div>
          </div>
          <div class="details-container color-container">
            <div class="article-container">
              <img
                src="./assets/rent.jpg"
                alt="Project 2"
                class="project-img"
              />
            </div>
            <h2 class="experience-sub-title project-title">Rental APP</h2>
            <div class="btn-container">
              <asp:Button ID="Button6" runat="server" Text="Github" CssClass="btn btn-color-2 project-btn" OnClick="GithubButton_Click" />
              
              </button>
              <button
                class="btn btn-color-2 project-btn"
                onclick="location.href='https://github.com/'"
              >
                Live Demo
              </button>
            </div>
          </div>
          <div class="details-container color-container">
            <div class="article-container">
              <img
                src="./assets/edu.jpg"
                alt="Project 3"
                class="project-img"
              />
            </div>
            <h2 class="experience-sub-title project-title">LMS Website</h2>
            <div class="btn-container">
             <asp:Button ID="Button7" runat="server" Text="Github" CssClass="btn btn-color-2 project-btn" OnClick="GithubButton_Click" />
              
              </button>
              <button
                class="btn btn-color-2 project-btn"
                onclick="location.href='https://github.com/'"
              >
                Live Demo
              </button>
            </div>
          </div>
        </div>
      </div>
      <img
        src="./assets/arrow.png"
        alt="Arrow icon"
        class="icon arrow"
        onclick="location.href='./#contact'"
      />
    </section>
    <section id="contact">
      <p class="section__text__p1">Get in Touch</p>
      <h1 class="title">Contact Me</h1>
      <div class="contact-info-upper-container">
        <div class="contact-info-container">
          <img
            src="./assets/email.png"
            alt="Email icon"
            class="icon contact-icon email-icon"
          />
          <p><a href="mailto:peyalsaha455l@gmail.com">peyalsaha455@gmail.com</a></p>
        </div>
        <div class="contact-info-container">
          <img
            src="./assets/linkedin.png"
            alt="LinkedIn icon"
            class="icon contact-icon"
          />
          <p><a href="https://www.linkedin.com/in/peyal-saha-4554b222a/">LinkedIn</a></p>
        </div>
      </div>
    </section>

        <h4 class="title">Message Me</h4>
        <div class="contact-info-container"align="center">
    <asp:TextBox ID="msgbox" runat="server" placeholder="write message" height="50px" Width="400px"></asp:TextBox><br />
     <asp:Button ID="button5" class="btn btn-color-2 project-btn" runat="server" OnClick="button5_click" Text="send" />
</div>
        
    <footer>
      <nav>
        <div class="nav-links-container">
          <ul class="nav-links">
            <li><a href="#about">About</a></li>
            <li><a href="#experience">Experience</a></li>
              <li><a href="#hobby">Hobby</a></li>
            <li><a href="#projects">Projects</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div>
      </nav>
      <p>Copyright &#169; 2024 Peyal Saha. All Rights Reserved.</p>
    </footer>
        <div align="center">
        <div class="btn btn-color-2 project-btn">
              <a href="login.aspx"><h3><p align="center">Log In</p></h3></div>
       </div>
        
    <script src="/cssjs/script.js"></script>
    </form>
</body>
</html>
