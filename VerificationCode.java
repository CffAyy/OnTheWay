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
		VerifyCode verifyCode=new VerifyCode();
		BufferedImage bi=verifyCode.getImage();
		System.out.println((verifyCode).getText());
		
		VerifyCode.output(bi, new FileOutputStream("E:/java web/classwork/WebContent/img/a.jpg"));
	}

	}
