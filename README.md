# Product API

A Laravel-based RESTful API for managing products. This project provides a complete CRUD API for product management with database seeding and proper authentication structure.

## 🚀 Features

- RESTful API for product management
- Full CRUD operations (Create, Read, Update, Delete)
- Database seeding with 100 sample products
- Laravel Sanctum authentication ready
- MySQL database integration
- Proper API resource routing

## 📋 Requirements

- PHP >= 8.2
- Composer
- MySQL/MariaDB
- Laravel 12.0

## 🛠️ Installation

1. Clone the repository
```bash
git clone https://github.com/ahmadabdallahh/product-api-test.git
cd product-api-test
```

2. Install dependencies
```bash
composer install
```

3. Environment setup
```bash
cp .env.example .env
php artisan key:generate
```

4. Configure your database in `.env` file
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=my-laravel-course
DB_USERNAME=root
DB_PASSWORD=
```

5. Run migrations and seed
```bash
php artisan migrate
php artisan db:seed
```

6. Start the development server
```bash
php artisan serve
```

## 📁 Project Structure

```
product-api/
├── app/
│   ├── Http/
│   │   └── Controllers/
│   │       ├── Controller.php
│   │       └── ProductController.php
│   ├── Models/
│   │   ├── Product.php
│   │   └── User.php
│   └── Providers/
│       └── AppServiceProvider.php
├── bootstrap/
│   ├── app.php
│   ├── cache/
│   │   ├── packages.php
│   │   └── services.php
│   └── providers.php
├── config/
│   ├── app.php
│   ├── auth.php
│   ├── cache.php
│   ├── database.php
│   ├── filesystems.php
│   ├── logging.php
│   ├── mail.php
│   ├── queue.php
│   ├── sanctum.php
│   ├── services.php
│   └── session.php
├── database/
│   ├── database.sqlite
│   ├── factories/
│   │   ├── ProductFactory.php
│   │   └── UserFactory.php
│   ├── migrations/
│   │   ├── 0001_01_01_000000_create_users_table.php
│   │   ├── 0001_01_01_000001_create_cache_table.php
│   │   ├── 0001_01_01_000002_create_jobs_table.php
│   │   ├── 2026_01_26_212111_create_products_table.php
│   │   └── 2026_01_26_213756_create_personal_access_tokens_table.php
│   └── seeders/
│       ├── DatabaseSeeder.php
│       └── ProductSeeder.php
├── public/
│   └── index.php
├── resources/
│   └── views/
│       └── welcome.blade.php
├── routes/
│   ├── api.php
│   └── web.php
├── storage/
│   ├── app/
│   ├── framework/
│   │   ├── cache/
│   │   ├── testing/
│   │   └── views/
│   └── logs/
├── tests/
├── vendor/
├── .env
├── .env.example
├── .gitignore
├── .gitattributes
├── .editorconfig
├── artisan
├── composer.json
├── composer.lock
├── package.json
├── phpunit.xml
├── vite.config.js
└── README.md
```

## 🔧 API Endpoints

### Products API

| Method | Endpoint | Description | Authentication |
|--------|----------|-------------|----------------|
| GET | `/api/products` | Get all products | No |
| GET | `/api/products/{id}` | Get a specific product | No |
| POST | `/api/products` | Create a new product | No |
| PUT/PATCH | `/api/products/{id}` | Update a product | No |
| DELETE | `/api/products/{id}` | Delete a product | No |

### Authentication Endpoint

| Method | Endpoint | Description | Authentication |
|--------|----------|-------------|----------------|
| GET | `/api/user` | Get authenticated user | Required |

## 📊 Database Schema

### Products Table

| Column | Type | Description |
|--------|------|-------------|
| id | BIGINT | Primary Key (Auto Increment) |
| name | STRING | Product name |
| description | TEXT | Product description (nullable) |
| price | DECIMAL(8,2) | Product price |
| quantity | INTEGER | Product quantity |
| created_at | TIMESTAMP | Creation timestamp |
| updated_at | TIMESTAMP | Last update timestamp |

## 🧪 Database Seeding

The project includes a `ProductSeeder` that creates 100 sample products with random data:

- **Name**: Random word
- **Description**: Random sentence
- **Price**: Random float between 10 and 999,999.99
- **Quantity**: Random integer between 10 and 8,800

To run the seeder:
```bash
php artisan db:seed
# Or run specific seeder
php artisan db:seed --class=ProductSeeder
```

## 📝 Models

### Product Model

```php
class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'price',
        'quantity'
    ];
}
```

## 🎯 Usage Examples

### Get All Products
```bash
curl -X GET http://localhost:8000/api/products
```

### Create a Product
```bash
curl -X POST http://localhost:8000/api/products \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Laptop",
    "description": "High-performance laptop",
    "price": 999.99,
    "quantity": 50
  }'
```

### Update a Product
```bash
curl -X PUT http://localhost:8000/api/products/1 \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Updated Laptop",
    "price": 899.99
  }'
```

### Delete a Product
```bash
curl -X DELETE http://localhost:8000/api/products/1
```

## 📝 Notes

- The API currently doesn't require authentication for product endpoints (open for demo purposes)
- Database is configured for MySQL but can be easily switched to other databases
- The project includes proper error handling and validation
- All routes are properly registered and follow RESTful conventions

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests
5. Submit a pull request

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
