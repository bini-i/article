![](https://img.shields.io/badge/Microverse-blueviolet)

# Wildstyle articles
![Screenshot](./app/assets/images/screenshot.png)
![Screenshot](./app/assets/images/screenshot2.png)

## About the Project

This project is a rails app where articles with a theme of wild animals and wildlife are grouped under different categories and an authenticated user has an option to create, view, edit and delete articles:

As a guest user:
- Create an account/log in
- See Home page and category page 

As a logged-in user:
- Create articles.
- Upvote articles.

A list of commonly used resources that I find helpful is listed in the acknowledgements.


## Table of Contents

* [About the Project](#about-the-project)
* [Built With](#built-with)
* [Live Demo](#live-demo)
* [Getting Started](#getting-started)
* [Authors](#authors)
* [Contributing](#contributing)
* [Show your support](#show-your-support)
* [License](#license)
* [Acknowledgements](#acknowledgements)

## Built With

* [Ruby on Rails](https://rubyonrails.org/)
* [Ruby](https://www.ruby-lang.org/en/)
* [HTML5](https://en.wikipedia.org/wiki/HTML5)
* [SASS(SCSS)](https://sass-lang.com/)
* [Bootstrap](https://getbootstrap.com/)
* [JavaScript](https://en.wikipedia.org/wiki/JavaScript)


## Live Demo

[Live Demo Link](https://wild-style.herokuapp.com/)


## Getting Started

### To get a local copy up and running follow these simple example steps.

1. On the project GitHub page, navigate to the main page of the repository.
2. Under the repository name, locate and click on a green button named `Code`. 
3. Copy the project URL as displayed.
4. If you're running the Windows Operating System, open your command prompt. On Linux, Open your terminal. 
5. Change the current working directory to the location where you want the cloned directory to be made. Leave as it is if the current location is where you want the project to be. 
6. Type git clone, and then paste the URL you copied in Step 3. <br>
e.g. $ git clone https://github.com/yourUsername/yourProjectName 
7. Press Enter. Your local copy will be created. 

### To view the app in your browser
1. Open your terminal and navigate to the projects folder.
3. Make sure you have ruby installed on your local machine.
2. run the following commands
```
bundle install
rails db: migrate
rails server
```
3. Open your browser and go to
```
http://localhost:3000/
```
### To run the tests
1. Open your terminal and navigate to the projects folder.
2. run the following command.
```
bundle exec rspec
```

## Authors

👤 **Binyam Hailemeskel**

- GitHub: [@bini-i](https://github.com/bini-i)
- Twitter: [@binyamshewa](https://twitter.com/binyamshewa)
- LinkedIn: [binyam hailemeskel](https://www.linkedin.com/in/bini-i/)

## Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](../../issues).

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


## Show your support

Give a ⭐️ if you like this project!


## License

This project is [MIT](./LICENSE) licensed.


## Acknowledgements
* The project's UI and styling is based on the design template made by [Nelson Sakwa](https://www.behance.net/sakwadesignstudio)
* [rails guides](https://guides.rubyonrails.org/)
* [bootsrap](https://getbootstrap.com/)
* [rspec rails gem](https://github.com/rspec/rspec-rails)
* [shoulda matchers gem](https://github.com/thoughtbot/shoulda-matchers)
