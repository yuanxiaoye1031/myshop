package cn.edu.hit.util;

import com.alibaba.fastjson.JSONObject;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.InputStreamRequestEntity;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.RequestEntity;
import org.springframework.http.*;
import org.springframework.http.client.SimpleClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

import java.io.*;
import java.net.URL;
import java.net.URLConnection;

public class HTTPUtils {

    /**
     * 向指定 URL 发送POST方法的请求
     *
     * @param url
     *   发送请求的 URL
     * @param param
     *   请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
     * @return 所代表远程资源的响应结果
     */
    public static String sendPost(String url, String param) {
        PrintWriter out = null;
        BufferedReader in = null;
        String result = "";
        try {
            URL realUrl = new URL(url);
            // 打开和URL之间的连接
            URLConnection conn = realUrl.openConnection();
            // 设置通用的请求属性
            conn.setRequestProperty("accept", "*/*");
            conn.setRequestProperty("connection", "Keep-Alive");
            conn.setRequestProperty("user-agent",
                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
            // 发送POST请求必须设置如下两行
            conn.setDoOutput(true);
            conn.setDoInput(true);
            // 获取URLConnection对象对应的输出流
            out = new PrintWriter(conn.getOutputStream());
            // 发送请求参数
            out.print(param);
            // flush输出流的缓冲
            out.flush();
            // 定义BufferedReader输入流来读取URL的响应
            in = new BufferedReader(
                    new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result += line;
            }
        } catch (Exception e) {
            System.out.println("发送 POST 请求出现异常！"+e);
            e.printStackTrace();
        }
        //使用finally块来关闭输出流、输入流
        finally{
            try{
                if(out!=null){
                    out.close();
                }
                if(in!=null){
                    in.close();
                }
            }
            catch(IOException ex){
                ex.printStackTrace();
            }
        }
        return result;
    }

    /**
     * 向指定 URL 发送POST方法的请求
     *
     * @param url
     * 发送请求的 URL
     * @param jsonData
     * 请求参数，请求参数应该是Json格式字符串的形式。
     * @return 所代表远程资源的响应结果
     */
    public static String sendJsonPost(String url, String jsonData) {
        PrintWriter out = null;
        BufferedReader in = null;
        String result = "";
        try {
            HttpClient client = new HttpClient(); // 客户端实例化
            PostMethod postMethod = new PostMethod(url); // 请求方法post，可以将请求路径传入构造参数中

            postMethod.addRequestHeader("Content-type", "application/json; charset=utf-8");
            //postMethod.addRequestHeader("Authorization", "eyJhbGciOiJIUzUxMiJ9.eyJueDpwbHVnaW5fc2VydmVyOmFwaTpsb2dpbl90b2tlbnM6IjoiZDE4ZjFiNjgtNDAxOS00OWI2LWI4NWEtYjY1Y2ZjYjU0OGJmIn0.yx6vZZNNqIPDepvGaGea0hqCWNEAF_ftTL70mghajB3-QwHpxp2rmPnLHNvxE9YsjQMLgEk68MDsKvBzVMkIzg");
            byte[] requestBytes = jsonData.getBytes("utf-8"); // 将参数转为二进制流

            InputStream inputStream = new ByteArrayInputStream(requestBytes, 0,requestBytes.length);
            // 请求体
            RequestEntity requestEntity = new InputStreamRequestEntity(inputStream,requestBytes.length, "application/json; charset=utf-8");
            postMethod.setRequestEntity(requestEntity); // 将参数放入请求体
            int i = client.executeMethod(postMethod); // 执行方法
            System.out.println("请求状态"+i);

            // 这里因该有判断的，根据请求状态判断请求是否成功，然后根据第三方接口返回的数据格式，解析出我们需要的数据
            byte[] responseBody = postMethod.getResponseBody(); // 得到相应数据
            String s = new String(responseBody);
            System.out.println(s);
        } catch (Exception e) {
            System.out.println("发送 POST 请求出现异常！" + e);
            e.printStackTrace();
        }

        // 使用finally块来关闭输出流、输入流
        finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (in != null) {
                    in.close();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }

        return result;
    }


    public static String HttpRestClient(String url, HttpMethod method, JSONObject json) throws IOException {
        SimpleClientHttpRequestFactory requestFactory = new SimpleClientHttpRequestFactory();
        requestFactory.setConnectTimeout(10*1000);
        requestFactory.setReadTimeout(10*1000);
        RestTemplate client = new RestTemplate(requestFactory);
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_PROBLEM_JSON_UTF8);
        HttpEntity<String> requestEntity = new HttpEntity<String>(json.toString(), headers);
        //  执行HTTP请求
        ResponseEntity<String> response = client.exchange(url, method, requestEntity, String.class);
        return response.getBody();
    }
}
