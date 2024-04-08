const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootxf481/",
            name: "springbootxf481",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootxf481/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "在线招投标系统"
        } 
    }
}
export default base
