# ===============================
# 🧱 Base image: Apache Tomcat 9 + JDK 17
# ===============================
FROM tomcat:9.0-jdk17-temurin

# Xóa webapp mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# ===============================
# 📦 Copy WAR file (đã build sẵn)
# ===============================
# Đặt WAR file của bạn thành ROOT.war để app chạy ở /
COPY ch13_ex1_email_war.war /usr/local/tomcat/webapps/ROOT.war

# ===============================
# 🌐 Cấu hình cổng (Render yêu cầu 8080)
# ===============================
EXPOSE 8080

# ===============================
# 🧩 Biến môi trường (nếu cần debug SSL)
# ===============================
ENV JAVA_OPTS="-Djavax.net.ssl.trustStorePassword=changeit"

# ===============================
# 🚀 Lệnh khởi động Tomcat
# ===============================
CMD ["catalina.sh", "run"]
