// Copyright 2023 Alexey Remizov <alexey@remizov.org>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

output "json" {
  description = "Представление ключа в формате JSON как в результате команды `yc iam key create`."

  value = jsonencode({
    created_at         = yandex_iam_service_account_key.default.created_at
    id                 = yandex_iam_service_account_key.default.id
    key_algorithm      = yandex_iam_service_account_key.default.key_algorithm
    private_key        = yandex_iam_service_account_key.default.private_key
    public_key         = yandex_iam_service_account_key.default.public_key
    service_account_id = yandex_iam_service_account_key.default.service_account_id
  })

  sensitive = true
}
