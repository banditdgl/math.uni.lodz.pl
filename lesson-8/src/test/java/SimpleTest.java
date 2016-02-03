/**
 * Created by Jacek on 2015-08-01.
 */

import org.junit.*;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import static org.junit.Assert.*;

public class SimpleTest {

	static private WebDriver driver;
	
    private static final String URL = "http://localhost:8080/registrationform/";
    
    private static String randomString(String chars, int length) {
    	Random randomGen = new Random();
        char[] randomString = new char[length];
        for(int i = 0; i < length; i++) {
        	randomString[i] = chars.charAt(randomGen.nextInt(chars.length()));
        }
        return new String(randomString);
    }

    @Before
    public void openBrowser(){
        driver = new FirefoxDriver();
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.get(URL);
    }

    @Test
    public void incorrectAnswerTest(){
        driver.findElement(By.name("firstName")).clear();
        driver.findElement(By.name("firstName")).sendKeys("Imie");
        driver.findElement(By.name("lastName")).clear();
        driver.findElement(By.name("lastName")).sendKeys("Nazwisko");
        String emailAdr = randomString("abcdefghijklmnoprstuvwxyz", 8) + "@gft.com"; 
        driver.findElement(By.name("email")).clear();
        driver.findElement(By.name("email")).sendKeys(emailAdr);
        driver.findElement(By.name("repeatEmail")).clear();
        driver.findElement(By.name("repeatEmail")).sendKeys(emailAdr);
        driver.findElement(By.xpath("(//button[text()='Java'])")).click();
        driver.findElement(By.id("gwt-uid-22")).click();
        driver.findElement(By.id("gwt-uid-26")).click();
        driver.findElement(By.xpath("(//button[text()='Save'])")).click();
        assertEquals("We're sorry but your answer was incorrect.", driver.findElement(By.className("GOFRIDJCBJ")).getText());
    }
    
    @Test
    public void correctAnswerTest(){
        driver.findElement(By.name("firstName")).clear();
        driver.findElement(By.name("firstName")).sendKeys("Imie");
        driver.findElement(By.name("lastName")).clear();
        driver.findElement(By.name("lastName")).sendKeys("Nazwisko");
        String emailAdr = randomString("abcdefghijklmnoprstuvwxyz", 8) + "@gft.com";
        driver.findElement(By.name("email")).clear();
        driver.findElement(By.name("email")).sendKeys(emailAdr);
        driver.findElement(By.name("repeatEmail")).clear();
        driver.findElement(By.name("repeatEmail")).sendKeys(emailAdr);
        driver.findElement(By.xpath("(//button[text()='Java'])")).click();
        driver.findElement(By.id("gwt-uid-25")).click();  
        driver.findElement(By.id("gwt-uid-26")).click();
        driver.findElement(By.xpath("(//button[text()='Save'])")).click();
        assertEquals("Congratulations! You've won:", driver.findElement(By.className("GOFRIDJCEI")).getText());
    }
    
    @Test
    public void differentRepeatedEmailTest(){
        driver.findElement(By.name("email")).clear();
        driver.findElement(By.name("email")).sendKeys("firstemail1@gft.com");
        driver.findElement(By.name("repeatEmail")).clear();
        driver.findElement(By.name("repeatEmail")).sendKeys("secondemail@gft.com");
        assertEquals("Please provide an identical email as you have written above.", driver.findElement(By.cssSelector(".GOFRIDJCII > div:nth-child(1) > div:nth-child(3)")).getText());
    }
    
	@After
    public void closeBrowser(){
        driver.quit();
    }
}
