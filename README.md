# Healio 🩺

**Healio** is a modern Ruby on Rails web application built for medical institutions. It provides two portals — one for **Receptionists** to manage patients and another for **Doctors** to analyze patient data with visual graphs.

## ✨ Features

### 🔐 Authentication
- Single login system for both Receptionists and Doctors
- Role-based access control using Devise

### 👩‍💼 Receptionist Portal
- Register new patients
- Perform full **CRUD** operations (Create, Read, Update, Delete)
- Responsive card-based patient UI with avatars
- Real-time search functionality (coming soon)

### 👨‍⚕️ Doctor Portal
- View all registered patients
- Interactive graph: Patients registered over time
- Clean dashboard with data insights

### 📊 Data Visualization
- Integrated with **Chartkick + Chart.js** for visual analytics
- PostgreSQL-backed grouped data by date

### 🛠️ Tech Stack
- **Framework**: Ruby on Rails 8
- **Database**: PostgreSQL
- **Authentication**: Devise
- **Styling**: Tailwind CSS
- **Charts**: Chartkick + Chart.js
- **Frontend Tools**: Turbo, Stimulus, Importmap

---

## 🚀 Getting Started

### 1. Clone the Repo

```bash
git clone https://github.com/your-username/healio.git
cd healio
```

### 2. Install Dependencies
```bash
bundle install
yarn install --check-files
```

### 3. Setup the Database
```bash
rails db:create db:migrate db:seed
```

### 4. Start the Server
```bash
bin/dev
```

Visit http://localhost:3000 to access the app.

🔑 Default Roles (for testing)

You can create users manually or seed data with different roles:
	•	Receptionist
	•	Doctor

Make sure to assign the appropriate role after registration.

#### Try logging in with

o A Receptionist
```bash
LOGIN = reception@example.com
PASSWORD = password
```

o A Doctor
```bash
LOGIN = doctor@example.com
PASSWORD = password
```



⸻

🧪 Testing

Coming soon. The app can easily be extended with RSpec or Minitest for model and controller specs.

⸻

💡 Creative Additions
	•	Live search filter on the receptionist dashboard
	•	Patient visit history & appointment reminders
	•	PDF export of patient records
	•	Email notifications for registration or follow-ups
	•	Code scanning & CI via GitHub Actions

⸻

📂 File Structure Highlights
	•	app/models/user.rb – Devise roles
	•	app/controllers/receptionist_dashboard_controller.rb
	•	app/controllers/doctor_dashboard_controller.rb
	•	app/views/receptionist_dashboard/index.html.erb – Patient cards
	•	app/views/doctor_dashboard/index.html.erb – Patient graph

⸻


📄 License

This project is built for academic/evaluation purposes. All dependencies retain their respective licenses.

⸻

👨‍💻 Author

Built with ❤️ by Aman Singhal







