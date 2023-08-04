# Модуль Terraform Yandex Service Account Key

Модуль Terraform для создания ключа сервисного аккаунта Yandex Cloud.
Модуль выводит ключ в формате JSON. В таком виде ключ можно будет использовать
для настройки клиента Yandex Cloud API, в частности &mdash; провайдера Terraform.

## Пример использования

```terraform
resource "yandex_iam_service_account" "admin" {
  name = "admin"
}

module "admin_key" {
  source = "github.com/alxrem/terraform-yandex-service-account-key"

  service_account_id = yandex_iam_service_account.admin.id
}

output "key" {
  value = module.admin_key.json
}
```
<!-- BEGIN_TF_DOCS -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Описание ключа. | `string` | `"Managed by terraform"` | no |
| <a name="input_service_account_id"></a> [service\_account\_id](#input\_service\_account\_id) | ID сервисного аккаунта, для которого создаётся ключ. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_json"></a> [json](#output\_json) | Представление ключа в формате JSON как в результате команды `yc iam key create`. |
<!-- END_TF_DOCS -->