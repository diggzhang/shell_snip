curl 'https://oapi.dingtalk.com/robot/send?access_token=XXXXX' \
   -H 'Content-Type: application/json' \
   -d '{"msgtype": "text",
        "text": {
             "content": "数据平台gen_info导入执行完成"
        }
      }'
