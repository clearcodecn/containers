// 正则替换 xorm 的tag  从：
xorm:"'([a-zA-A]{0,19})\'{0,1}(\s{0,1}PK autoincr){0,1}(.*?)\"
xorm:"$1$2"


// 去除query的tag: 
\s{0,}query:"(.*?)"
 -> 替换成空

 注释：
 //(\w{0,})
 // $1