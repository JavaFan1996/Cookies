package com.atguigu.javaweb;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * 开发简单标签直接继承SimpleTagSupport getJspContext();可以直接获取pageContext（）
 */
public class MaxTag extends SimpleTagSupport{

    private String num1;
    private String num2;

    public void setNum1(String num1) {
        this.num1 = num1;
    }

    public void setNum2(String num2) {
        this.num2 = num2;
    }

    @Override
    public void doTag() throws JspException, IOException {
        int a = 0;
        int b = 0;

        PageContext pageContext = (PageContext) getJspContext();

        JspWriter out = pageContext.getOut();

        try {
            a = Integer.parseInt(num1);
            b = Integer.parseInt(num2);
            out.print(a > b ? a : b);
        } catch (Exception e) {
            out.print("输入的属性的格式不正确!");
        }

    }

}
