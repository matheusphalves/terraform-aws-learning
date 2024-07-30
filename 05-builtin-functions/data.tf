data "template_file" "json" {
  template = file("template.json.tpl")

  vars = {
    age = 33

    eye = "Brown"

    name = "Alfred"

    gender = "Male"
  }
}

data "archive_file" "json" {

  type = local.file_extension

  output_path = "${path.module}/files/${local.object_name}.${local.file_extension}"

  source {
    content = data.template_file.json.rendered

    filename = "${local.object_name}.json"
  }
}
