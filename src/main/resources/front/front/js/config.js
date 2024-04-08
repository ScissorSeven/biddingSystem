
var projectName = '在线招投标系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '招标信息',
	url: './pages/zhaobiaoxinxi/list.html'
}, 

{
	name: '公告信息',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/springbootxf481/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["查看","修改","删除"],"menu":"投标人","menuJump":"列表","tableName":"toubiaoren"}],"menu":"投标人管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"招标人","menuJump":"列表","tableName":"zhaobiaoren"}],"menu":"招标人管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"评标人","menuJump":"列表","tableName":"pingbiaoren"}],"menu":"评标人管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"招标信息","menuJump":"列表","tableName":"zhaobiaoxinxi"}],"menu":"招标信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"投标信息","menuJump":"列表","tableName":"toubiaoxinxi"}],"menu":"投标信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"评标信息","menuJump":"列表","tableName":"pingbiaoxinxi"}],"menu":"评标信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"中标信息","menuJump":"列表","tableName":"zhongbiaoxinxi"}],"menu":"中标信息管理"},{"child":[{"buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","投标"],"menu":"招标信息列表","menuJump":"列表","tableName":"zhaobiaoxinxi"}],"menu":"招标信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","删除"],"menu":"投标信息","menuJump":"列表","tableName":"toubiaoxinxi"}],"menu":"投标信息管理"},{"child":[{"buttons":["查看"],"menu":"评标信息","menuJump":"列表","tableName":"pingbiaoxinxi"}],"menu":"评标信息管理"},{"child":[{"buttons":["查看","审核"],"menu":"中标信息","menuJump":"列表","tableName":"zhongbiaoxinxi"}],"menu":"中标信息管理"}],"frontMenu":[{"child":[{"buttons":["查看","投标"],"menu":"招标信息列表","menuJump":"列表","tableName":"zhaobiaoxinxi"}],"menu":"招标信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"投标人","tableName":"toubiaoren"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"招标信息","menuJump":"列表","tableName":"zhaobiaoxinxi"}],"menu":"招标信息管理"},{"child":[{"buttons":["查看","删除","审核","中标"],"menu":"投标信息","menuJump":"列表","tableName":"toubiaoxinxi"}],"menu":"投标信息管理"},{"child":[{"buttons":["查看"],"menu":"评标信息","menuJump":"列表","tableName":"pingbiaoxinxi"}],"menu":"评标信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"中标信息","menuJump":"列表","tableName":"zhongbiaoxinxi"}],"menu":"中标信息管理"}],"frontMenu":[{"child":[{"buttons":["查看","投标"],"menu":"招标信息列表","menuJump":"列表","tableName":"zhaobiaoxinxi"}],"menu":"招标信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"是","roleName":"招标人","tableName":"zhaobiaoren"},{"backMenu":[{"child":[{"buttons":["查看","评标"],"menu":"投标信息","menuJump":"列表","tableName":"toubiaoxinxi"}],"menu":"投标信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"评标信息","menuJump":"列表","tableName":"pingbiaoxinxi"}],"menu":"评标信息管理"}],"frontMenu":[{"child":[{"buttons":["查看","投标"],"menu":"招标信息列表","menuJump":"列表","tableName":"zhaobiaoxinxi"}],"menu":"招标信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"是","roleName":"评标人","tableName":"pingbiaoren"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
