resource "aws_iam_user" "new_accounts" {
  
  for_each = toset(["TF-Todd", "TF-James", "TF-Alice", "TF-Dottie"])

  name = each.key # note: each.key and each.value are the same for a set

}