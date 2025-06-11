resource "local_file" "my_animal"{
    filename = "pets.txt"
    content = "I love my cat"
    lifecycle {
      create_before_destroy = true
    }
    }

resource "random_pet" "petname" {
  prefix = "MR"
  separator = "."
length = "1"
}
