// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"
// import NestedForm from "stimulus-rails-nested-form"
import NestedForm from "./nested_form"
import PrimaryPictureUpload from './primary_picture_upload_controller'

application.register("nested-form", NestedForm)
application.register("primary-picture-upload", PrimaryPictureUpload)