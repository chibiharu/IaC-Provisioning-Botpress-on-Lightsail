## Project：PJ-chibiBot-Botpress-Service
Botサービスを提供しているBotpress環境を管理しているリポジトリ

## 構成図
※準備中

## リポジトリ階層図
※準備中

## 事前準備<br>
環境構築にあたり、事前に以下の要件を満たしている必要がある。<br>
- 任意のプロパイダーでドメインを取得済であり、Route53にてパブリックホストゾーンが作成済であること

## 構築手順<br>
1. ：「sh_param.conf」ファイルにパラメータを記述する。
2. ：「lightsail_create_stack.sh」で「lightsail.yml」をデプロイする。
3. ：「route53_create_stack.sh」で「route53.yml」をデプロイする。

## 動作確認<br>
- 動作確認①：Lightsailコンソール画面での目視確認
    手順1.： Lightsailコンソール画面にてインスタンス、及び静的IPが作成されていることを確認する。

***
## 参考
[【チャット・ボット】Amazon LightsailでBotpress環境を簡単に構築する！](https://chibinfra-techblog.com/build-chat-bot-botpress/)