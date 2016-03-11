package com.verifone.mms.mmsdocument.rest;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;


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
	
	@ResponseStatus(value=HttpStatus.OK)
    @RequestMapping(value = "/uploadMmsDocument", method = RequestMethod.POST)
    public void uploadMmsDocument(@RequestParam("file") MultipartFile file, 
    								@RequestParam("documentTitle") String documentTitle, 
    								@RequestParam("documentDescription") String documentDescription,
    								@RequestParam("documentTags") List<String> tags
    								) {
		
		if (!file.isEmpty()) {
			
			 String mimeType = file.getContentType();
             String filename = file.getOriginalFilename();
			
             System.out.println("Mime TYPE: " + mimeType);
             System.out.println("Filename: " + filename);
             
             //TODO: save doc somewhere...
		}
	}
	
	// Download a file
    @RequestMapping(value = "/download", method = RequestMethod.GET)
    public void downloadFile(@RequestParam("filename") String filename, HttpServletResponse response)  throws Exception {

        //File file = fileUpload.getFile();
        File downloadFile = new File("D:\\Profiles\\T_IbrahimaK1\\Downloads\\9781441983022-c1.pdf");
        
        //TODO get document somewhere...
        
        FileInputStream inputStream = new FileInputStream(downloadFile);
        
        response.setContentType("application/pdf");
        response.setHeader("content-disposition", "inline; filename=exemple.pdf");
        
        IOUtils.copy(inputStream, response.getOutputStream());
        response.flushBuffer();
        
        inputStream.close();
        response.getOutputStream().close();
    }

}
