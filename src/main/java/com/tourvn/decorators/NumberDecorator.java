package com.tourvn.decorators;

import javax.servlet.jsp.PageContext;

import org.displaytag.decorator.DisplaytagColumnDecorator;
import org.displaytag.exception.DecoratorException;
import org.displaytag.properties.MediaTypeEnum;

import com.tourvn.utils.NumberUtil;

public class NumberDecorator implements DisplaytagColumnDecorator {
    public Object decorate(Object columnValue, PageContext pageContext, MediaTypeEnum media) throws DecoratorException {
        return NumberUtil.formatNum(columnValue);
    }
}

