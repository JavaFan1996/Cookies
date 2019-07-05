package com.atguigu.javaweb;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.InputStream;

public class ReadFileTag extends SimpleTagSupport {

//  相对于web用用的根路径名
    private String src;

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    @Override
    public void doTag() throws JspException, IOException {
        PageContext pageContext = (PageContext) getJspContext();
        InputStream in = pageContext.getServletContext().getResourceAsStream(src);

    }
}
