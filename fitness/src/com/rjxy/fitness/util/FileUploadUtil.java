package com.rjxy.fitness.util;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.rjxy.fitness.entity.Fitnessuser;

public class FileUploadUtil extends HttpServlet {

	public static void update(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 获取ServletContext对象
		ServletContext sc=req.getServletContext();
		/*String encode=sc.getInitParameter("encode");*/
		String encode="UTF-8";
		// 声明临时文件夹和上传文件夹的相对路径
		String tempPath="/WEB-INF/temp";
		String uploadPath="/upload";
		
		// 声明一个用于保存普通表单项数据的map集合
		Map<String, String> pMap=new HashMap<String, String>();
		// 声明一个变量，保存商品图片的实际url
		String imgurl=null;
		// 1.接收请求参数
		// 2.表单验证（略）
		// 借助commons-fileupload.jar
		
		
		DiskFileItemFactory factory=new DiskFileItemFactory(1024*1024,new File(sc.getRealPath(tempPath)));
		ServletFileUpload fileUpload=new ServletFileUpload(factory);
		if(!fileUpload.isMultipartContent(req)){
			throw new RuntimeException("请使用正确的文件上传表单");
		}
		// 设置单个文件的大小
		fileUpload.setFileSizeMax(1024*1024);//10KB
		// 设置一次上传的文件的总大小
		fileUpload.setSizeMax(1024*1024);//1mb
		
		// 解决上传文件名的乱码问题
		fileUpload.setHeaderEncoding(encode);
		try {
			// 解析请求
			List<FileItem> list=fileUpload.parseRequest(req);
			if(list!=null){
				for(FileItem fileItem:list){
					if(fileItem.isFormField()){
						// 普通表单项
						String name=fileItem.getFieldName();
						String value=fileItem.getString(encode);
						//System.out.println(name+"~~~"+value);
						//将普通表单项数据添加到pMap集合中
						pMap.put(name, value);
					}else{
						// 3.将上传的图片保存到对应位置
						
						//文件名重复问题
						String fileName=pMap.get("id");
						
						// /WEB-INF/upload/a/b/c/d/1/2/3/4/1231231.jpg
						imgurl=uploadPath+fileName;
						// 生成目录
						// d:/web/workspace/easymall/webroot/....
						uploadPath=sc.getRealPath(uploadPath);
						new File(uploadPath).mkdirs();
						
						//将文件保存到目标目录
						InputStream is=fileItem.getInputStream();
						FileOutputStream fos=null;
						try {
							fos=new FileOutputStream(uploadPath+"/"+fileName+".jpg");
							System.out.println(uploadPath+"/"+fileName);
							byte[] array=new byte[1024];
							int len=is.read(array);
							while(len!=-1){
								fos.write(array, 0, len);
								len=is.read(array);
							}
						} catch (Exception e) {
							e.printStackTrace();
							throw new RuntimeException("图片上传失败");
						}finally{
							is.close();
							fos.close();
							//删除临时文件
							fileItem.delete();
						}
					}
				}
			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		
		return ;
		// 5.根据执行的结果转发对应的视图
		
		}
}
