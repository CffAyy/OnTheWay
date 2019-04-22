package cn.itcast;

import java.awt.image.BufferedImage;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.annotation.WebServlet;

import org.junit.Test;

import cn.itcast.vcode.utils.VerifyCode;

@WebServlet("/VerificationCode")
public class VerificationCode {
	@Test
	public void fun1() throws FileNotFoundException, IOException {
		VerifyCode verifyCode=new VerifyCode();			//验证码
		BufferedImage bi=verifyCode.getImage();			//创建指定大小、指定图像类型的BufferedImage对象。
		System.out.println((verifyCode).getText());
		
		VerifyCode.output(bi, new FileOutputStream("E:/java web/classwork/WebContent/img/a.jpg"));	//存放位置
	}

	}
