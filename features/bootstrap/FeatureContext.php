<?php

use Behat\Behat\Context\Context;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\Mink\Element\NodeElement;
use Behat\Mink\Element;
use Behat\Mink\Element\ElementInterface;
use Drupal\DrupalExtension\Context\MinkContext;
use Drupal\DrupalExtension\Context\RawDrupalContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext implements SnippetAcceptingContext
{
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }

    /**
     * @BeforeStep
     * @throws Exception
     */
 /*   public function beforeStep()
    {
        $this->getSession()->getDriver()->maximizeWindow();
        throw new \Exception("window not maximize");
    }
*/
    /**
     * @Given /^I wait for "([^"]*)" sec$/
     */
    public function iWaitForSec($sec)
    {
        sleep($sec);
    }


    /**
     * @Then /^I should see "([^"]*)" filter with "([^"]*)" option$/
     * @throws Exception
     */
    public function iShouldSeeFilterWithOptions($filters, $option)
    {

        Switch ($filters) {

            case "Color":
                {
                    $session = $this->getSession();
                    $page = $this->getSession()->getPage();
                    $ColorfilterOptions = $page->findAll("css", ".layered_color");
                    echo "The Color filter options displaying are : \n";
                    foreach ($ColorfilterOptions as $color) {
                        // print_r($color->getText()). "\n";
                        $lable = trim(explode("(", $color->getText())[0]);
                        print_r($lable . "\n");
                        if ($lable == $option) {
                            return;
                        }
                    }
                    throw new \Exception("Option not found");
                    break;
                }


        }
    }

    /**
     * @Then /^I should see css selector "([^"]*)"$/
     */
    public function iShouldSeeCssSelector($css_selector)
    {
        $element = $this ->getSession()->getPage()->find("css",$css_selector );

        if (empty($element))
        {
            throw new \Exception(sprintf("The page '%s' does not contain the css selector '%s'", $this->getSession()->getCurrentUrl(), $css_selector));
        }
    }


}



