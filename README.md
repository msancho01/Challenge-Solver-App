# Challenge Solver App

## Overview

The **Challenge Solver App** is a Ruby on Rails application designed to solve various coding challenges, with a focus on visual representation and understanding of algorithmic concepts. Currently, it includes the "Boxes and Balls" challenge, with plans to expand to other challenges in the future.

## Features

- Solve algorithmic challenges
- Visual representation of steps taken in the algorithm
- Responsive design using Tailwind CSS
- Easily extensible to add new challenges

## Installation

To get started with the Challenge Solver App, follow these steps:

1. **Clone the repository**:

   ```
   git clone https://github.com/msancho01/Challenge-Solver-App.git
   cd Challenge-Solver-App
   ```

2. **Install dependencies**:

   Make sure you have [Ruby](https://www.ruby-lang.org/en/documentation/installation/) and [Rails](https://rubyonrails.org/) installed on your machine. Then run:

   ```
   bundle install
   ```

3. **Set up the database**:

   If your application uses a database, set it up using:

   ```
   rails db:create
   rails db:migrate
   ```

4. **Run the server**:

  Start your Rails server:

  ```
  rails server
  ```

  You can access the app at `http://localhost:3000`.

  **If it is not looking good, you will need to stop your server and then run this:
  ```
    rails assets:precompile;rails server
  ```


## Usage

Once the application is running, navigate to the available challenges, select a challenge, and follow the prompts to solve it. The app provides visual feedback on the steps taken to solve each challenge.

## Contributing

Contributions are welcome! If you'd like to contribute, please follow these steps:

1. Fork the repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Make your changes and commit them (`git commit -m 'Add new feature'`)
4. Push to the branch (`git push origin feature-branch`)
5. Create a pull request

## Acknowledgments

- [Ruby on Rails](https://rubyonrails.org/) - The web application framework used
- [Tailwind CSS](https://tailwindcss.com/) - For styling