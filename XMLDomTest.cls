@isTest
public class XMLDomTest 
{
	public static testMethod void doTestXmlParsing()
    {
        XMLDom controller = new XMLDom();
        controller.parseFromString('non-xml-text');
        
        string xmlText = '<bookstore><book>' + '<title>Everyday Italian</title>' + '<author>Giada De Laurentiis</author>' + '<year>2005</year>' + '</book></bookstore>';
        
        controller.parseFromString(xmlText);
        
        controller.getElementsByTagName('bookstore');
        
        controller.getElementByTagName('bookstore');
        
        XMLDom.Element element = controller.ownerDocument();
        
        controller.dumpAll();
        
        XMLDom.Element[] l = new XMLDom.Element[]{ element };
        //l.add( element );
        
        controller.dumpList(l);
        
        String xmlToString = controller.toXmlString();
    }
}