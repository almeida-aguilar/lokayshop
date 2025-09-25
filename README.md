# Lokay Shop

Lokay Shop is a web application that connects local stores with customers, allowing them to sell their products and manage their orders in one place. This project is built with Ruby on Rails and is designed to be a robust and scalable platform for e-commerce.

## Features

*   **Store Management:** Create and manage your own store, add products, and customize your store's appearance.
*   **Product Management:** Add, edit, and delete products, manage inventory, and set prices.
*   **Order Management:** View and manage incoming orders, update order statuses, and communicate with customers.
*   **Customer Management:** View customer information and order history.
*   **Search and Discovery:** Customers can search for stores and products, and discover new local businesses.
*   **Reviews and Ratings:** Customers can leave reviews and ratings for stores and products.

## Technologies Used

*   **Backend:** Ruby on Rails
*   **Frontend:** Hotwire (Turbo and Stimulus)
*   **Database:** PostgreSQL
*   **Deployment:** Kamal

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

*   Ruby 3.3.0 (as defined in `.ruby-version`)
*   Bundler
*   PostgreSQL

### Installation

1.  **Clone the repository:**
    ```bash
    git clone <your-repo-url>
    ```
2.  **Navigate to the project directory:**
    ```bash
    cd lokayshop
    ```
3.  **Install dependencies:**
    ```bash
    bundle install
    ```
4.  **Create and set up the database:**
    ```bash
    rails db:create
    rails db:migrate
    rails db:seed # Optional: to populate the database with initial data
    ```
5.  **Start the server:**
    ```bash
    rails server
    ```
The application will be available at `http://localhost:3000`.

## How to Run the Test Suite

This project uses Minitest for testing. To run the test suite, execute the following command:

```bash
rails test
```

## Database Schema

The database schema is defined in `db/schema.rb`. It consists of the following tables:

*   `usuarios`: Stores user information.
*   `tiendas`: Stores store information.
*   `categoria_tiendas`: Stores store categories.
*   `productos`: Stores product information.
*   `categoria_productos`: Stores product categories.
*   `pedidos`: Stores order information.
*   `resenas`: Stores review and rating information.

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

## License

This project is licensed under the MIT License. See `LICENSE` for more information.