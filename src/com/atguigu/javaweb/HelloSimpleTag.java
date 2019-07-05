package com.atguigu.javaweb;
import org.apache.taglibs.standard.lang.jstl.test.PageContextImpl;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.SimpleTag;
import java.io.IOException;

public class HelloSimpleTag implements SimpleTag {
    private String value ;
    private String count;

    public String getValue() {
        return value;
    }

    public String getCount() {
        return count;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public void setCount(String count) {
        this.count = count;
    }

    private PageContext pageContext;
    @Override
    public void doTag() throws JspException, IOException {
        System.out.println("do Tag");
    }

    @Override
    public void setParent(JspTag jspTag) {
        System.out.println("Set Parent");

    }

    @Override
    public JspTag getParent() {
        System.out.println("get Parent");
        return null;
    }


    /**
     * 一定会被JSP调用，先于dotag
     * @param jspContext
     */
    @Override
    public void setJspContext(JspContext jspContext) {
        System.out.println(jspContext instanceof PageContext);
        this.pageContext = (PageContext) jspContext;




    }

    @Override
    public void setJspBody(JspFragment jspFragment) {
        System.out.println("Set JspBody");

    }
}
