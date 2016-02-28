package com.verifone.mms.mmsdocument.rest;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.verifone.mms.mmsdocument.entities.MmsDocument;

@Controller
public class MmsDocumentRest {

	@RequestMapping(value="/", method = RequestMethod.GET)
	public String printHello(ModelMap model) {
		model.addAttribute("message", "Hello Spring MVC Framework!");

		return "index";
	}
	
	@RequestMapping(value="/mmsdocuments", method = RequestMethod.GET)
	@ResponseBody
	public List<MmsDocument> getDocuments(ModelMap model) {
		
		List<MmsDocument> list = new ArrayList<MmsDocument>();
		list.add(new MmsDocument(Integer.valueOf(1), "Doc1", "Desc1", new Date()));
		list.add(new MmsDocument(Integer.valueOf(2), "Doc2", "Desc2", new Date()));
		list.add(new MmsDocument(Integer.valueOf(3), "Doc3", "Desc3", new Date()));
		
		model.addAttribute("message", "Hello Spring MVC Framework!");

		return list;
	}

}
