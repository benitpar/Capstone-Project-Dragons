package tek.dragons.cucumber.runner;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import static io.cucumber.junit.CucumberOptions.SnippetType.CAMELCASE;

//@RunWith is a JUnit Annotation
@RunWith(Cucumber.class)
@CucumberOptions(
		tags = "",
		features = ("classpath:features"),
		glue = "tek.dragons.cucumber",
		dryRun = false,
		plugin = {
				"pretty",
				"html:target/htmlReports/cucumber-pretty.html",
				"json:target/jsonReports/cucumber.json"
		},
		snippets = CAMELCASE,
		monochrome = true
		)


public class TestRunner {
	
}