package com.niit.shoppingcartbackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;

public class CategoryTest {
	
	
	public static void main(String[] args) {
	      
	
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		CategoryDAO categoryDAO =   (CategoryDAO) context.getBean("categoryDAO");
		Category category =   (Category) context.getBean("category");
		
		category.setId("CN002");
		category.setName("mobiles");
		category.setDescription("this is micro mobile");
		categoryDAO.saveOrUpdate(category);
		categoryDAO.delete(category);
		
		System.out.println("save");
		context.close();
		if (categoryDAO.saveOrUpdate(category)== true)
		{
		System.out.println("Categroy created successfully");
		}
		else
		{
			System.out.println("category created unsuccessfully");
			
		}
		
		
	}
	
}



