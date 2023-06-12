## ORACLE DB 수정
- pom.xml 수정 
```
<dependency>
    <groupId>com.oracle.database.jdbc</groupId>
    <artifactId>ojdbc8</artifactId>
    <version>18.3.0.0</version>
</dependency>
```
- root-context.xml 수정
```
<property name="driverClassName" value="oracle.jdbc.driver.OracleDriver" />
<property name="url" value="jdbc:oracle:thin:@192.168.0.123:1521:XE" />
<property name="username" value="justsix" />
<property name="password" value="6666" />
```