# performance-test
# 前言
我會寫這一個程式是有兩個原因，一個是我每次再創Docker時候都需要指定Port我覺得非常的麻風左以寫了一個Bash去讓他自訂執行，第二個原因就是他會去測量我今天開好了許多Containers但到底使用了多少的系統使用率這邊將會記載，以下是實作方法．
# 使用方法
## 1.程式架構
* start-docker.sh : 用於啟動多台Containers並啟動監測程式
* perf-docker.sh : 監測系統的使用狀況
* netspeed.sh : 測量網卡出去的總流量（Byte）

## 2.小設定(完全照預設別說跑不動）
#### start-docker.sh
我預設從3000Port開始跑因而我寫2999
```
p = iperf3 起始Server Port -1的數字
```
#### perf-docker.sh
記得改成需要監測的網卡名稱（可以用 ip addr找一下）
```
_network=$(sh netspeed.sh 需監測的網卡名稱| awk '{printf $4}')
```
## 3.執行程式
```
source start-docker.sh
```
# 參考資料
netspeed.sh -- [suonikeyinsu](http://www.cnblogs.com/black-mamba/p/4419228.html)
