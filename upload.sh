#!/bin/sh
# script asli oleh http://www.instructables.com/member/e1ioan/, edit oleh @arip_se

RET=$(curl -v -F "consumer_token=4LBz1XRGMC5W4diy25w" -F "consumer_secret=uZ4ouEp6FTIRFhK1phS1cuxrCfMRaN4zDCwQaevA00" -F "oauth_token=1404604944-p7fnyuJT5ap2uc0XigppVRGWErNmw3rNPS9NrxU" -F "oauth_secret=1s0kAsXqijDJnPYIVlgdQERMxUGX2yJFvSNmVA5vA" -F "message=$2	" -F "key=e1905152caf0ab72e9abd97ed7ee2476" -F "media=@$1" http://api.twitpic.com/1/uploadAndPost.json)
