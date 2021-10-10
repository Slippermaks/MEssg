<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <@l.logout/>
    <div>Hello, ${user.getUsername()}!</div>
    <a href="/main">Main page</a>
</@c.page>