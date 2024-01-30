# Pin npm packages by running ./bin/importmap

<<<<<<< HEAD
pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
=======
pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
>>>>>>> e78d9e2f9d891ec3c9f919f8e4293e977174a6d1
pin_all_from "app/javascript/controllers", under: "controllers"
