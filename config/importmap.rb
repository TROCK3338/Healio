pin "application"
pin "chartkick"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@rails/ujs", to: "https://cdn.jsdelivr.net/npm/@rails/ujs@6.1.4/lib/assets/compiled/rails-ujs.js"
pin_all_from "app/javascript/controllers", under: "controllers"