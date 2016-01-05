local LibCompress = require('LibCompress')

local rawData =[[
    {"winner":"13:130000001","families":{"13:130000003":{"iconId":0,"serverName":"13Name","name":"333","serverId":13,"distributionJson":"{\"down\":1,\"up\":1,\"middle\":2}"},"13:130000001":{"iconId":0,"serverName":"13Name","name":"11","serverId":13,"distributionJson":"{\"down\":2,\"up\":1,\"middle\":1}"}},"battles":{"130000012":{"rightTotalHp":735,"leftAfterCurHp":63213,"rightAfterCurHp":0,"leftTotalHp":63213,"right":"13:130000004","combo":1,"exit":"13:130000001","winner":"13:130000001","leftBeforeCurHp":63213,"rightBeforeCurHp":735,"left":"13:130000001"},"130000014":{"rightTotalHp":2910,"leftAfterCurHp":3496,"rightAfterCurHp":0,"leftTotalHp":5813,"right":"13:130000019","combo":1,"exit":"13:130000002","winner":"13:130000002","leftBeforeCurHp":5813,"rightBeforeCurHp":2910,"left":"13:130000002"},"130000013":{"rightTotalHp":2910,"leftAfterCurHp":3586,"rightAfterCurHp":0,"leftTotalHp":4314,"right":"13:130000007","combo":1,"exit":"13:130000006","winner":"13:130000006","leftBeforeCurHp":4314,"rightBeforeCurHp":2910,"left":"13:130000006"}},"right":"13:130000003","warType":"local","downBattleIdsJson":"[130000014]","masters":{"13:130000002":{"pictureId":0,"level":80,"name":"未来式萤火"},"13:130000006":{"pictureId":5,"level":80,"name":"秀恩爱吸血鬼"},"13:130000019":{"pictureId":3,"level":50,"name":"腹黑剑圣"},"13:130000001":{"pictureId":0,"level":80,"name":"迷失黑神"},"13:130000018":{"pictureId":1,"level":50,"name":"翻转棉花糖"},"13:130000005":{"pictureId":1,"level":80,"name":"懒惰英雄"},"13:130000004":{"pictureId":2,"level":50,"name":"凶猛的新世界"},"13:130000007":{"pictureId":5,"level":50,"name":"随波逐流宅女"}},"middleBattleIdsJson":"[130000013]","middleWinner":"13:130000003","downWinner":"13:130000001","upBattleIdsJson":"[130000012]","upWinner":"13:130000001","left":"13:130000001"}
]]


print('Compressing...')
local compressedData = LibCompress:Compress(rawData)
print('Decompressing...')
local decompressedData = LibCompress:Decompress(compressedData)
if rawData == decompressedData then
    print('Test succeeded: Decompressed data matches original')
else
    error('Test failed: Decompressed data does NOT match original')
end
print('Saved ' .. (#rawData - #compressedData) / #rawData.. ' bytes')
