# 社会治理事件决策引擎

该工程承载区域事件接报、规则版本和决策回放，消息传输使用 NATS JetStream。配置文件和领域包放在 `internal/`，命令入口位于 `cmd/`。

使用 `docker compose up --build` 启动 NATS 与服务，服务提供 `:8080/healthz`。Go 测试命令为 `go test ./...`，运行数据目录可通过 `DATA_DIR` 指定。
