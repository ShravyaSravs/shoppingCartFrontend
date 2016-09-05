package com.niit.shoppingcart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productDAO;
	@Autowired
	Product product;
	
	@RequestMapping(value={"editproduct","addeditproduct/{id}/editproduct"})
    public String addproduct(@ModelAttribute("product")Product product, Model m)
    {
		productDAO.saveOrUpdate(product);
    	return "redirect:/Product";
    }

	
	/*@RequestMapping(value="delproduct")
	   public String deleteproduct(@ModelAttribute("product")Product product, Model m)
	   {
	    	productDAO.delete(product);
	    m.addAttribute("del","product deleted successfully");
	    return "Home";
	   }*/

 @RequestMapping(value="Product")
public ModelAndView productpage(@ModelAttribute("product") Product product,BindingResult result,
		@ModelAttribute("product1") Product product1,BindingResult result1)
{
 	
	 ModelAndView mv= new ModelAndView("/Home");
	//mv.addObject("product", new Product());
	mv.addObject("productList",productDAO.list());
	mv.addObject("UserClickedproduct", "true");
	return mv;
}
 
 @RequestMapping(value={"addeditproduct/{id}"})
 public String Productpagedelete(@PathVariable("id") String id,RedirectAttributes attributes){
	 attributes.addFlashAttribute("product1",this.productDAO.get(id));
	 return "redirect:/Product";
 }
 @RequestMapping(value={"adddeleteproduct/{id}"})
 public String Productpageedit(@ModelAttribute("product") Product product,Model m){
 	productDAO.delete(product);
	 return "redirect:/Product";
 }
}

	
	/*@RequestMapping(value="delproduct")
	public String deleteproduct(@ModelAttribute("product")Product product, Model m)
	{
		
		productDAO.delete(product);
		return "Home";
	}

	
	@RequestMapping(value="editproduct")
	public String editproduct(@ModelAttribute("product")Product product, Model m)
	{
		
		productDAO.update(product);
		return "Home";
	}

	@RequestMapping(value="Product")
	public String product(Model mv){
		mv.addAttribute("product",new Product());
		mv.addAttribute("UserClickedproduct","true");
		return "Home";
	}
	
}*/

