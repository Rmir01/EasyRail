# Pin npm packages by running ./bin/importmap

pin "application"
pin "jquery", to: "https://code.jquery.com/jquery-3.6.0.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
