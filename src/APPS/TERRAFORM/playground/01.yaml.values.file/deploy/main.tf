module "job" {
  source = "../spec"

  values = [
    yamldecode(file("values.yaml")),
    yamldecode(file("valuesVersion.yaml")),
    {
      count: 2
    },
  ]
}

output "jobspec" {
  value = module.job.jobspec
}
