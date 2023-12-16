package com.enomy;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CurrencyConverterController {
    @GetMapping("/converter")
    public String index() {
        return "currency";
    }
    
    @RequestMapping(value = "/converter", method = RequestMethod.POST)
    public String submit(@RequestParam String usd,String rate, Model model) {
        float result = Float.parseFloat(usd)*Float.parseFloat(rate);
        model.addAttribute("result1", result);
        return "currency";
    }
}
