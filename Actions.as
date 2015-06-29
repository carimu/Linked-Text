// create a basic format
var myFormat:TextFormat = new TextFormat();
myFormat.font = "Arial";
myFormat.size = 24;
myFormat.bold = true;

var myStyleSheet:StyleSheet = new StyleSheet();
myStyleSheet.setStyle("A",{textDecoration: "underline", color: "#0000FF"});

// create a text field with a Web URL link
var myWebLink:TextField = new TextField();
myWebLink.defaultTextFormat = myFormat;
myWebLink.styleSheet = myStyleSheet;
myWebLink.selectable = false;
myWebLink.htmlText = "Visit <A HREF='http://flashgameu.com'>FlashGameU.com</A>!";
myWebLink.x = 80;
myWebLink.y = 90;
myWebLink.width = 400;
myWebLink.height = 30;
addChild(myWebLink);

var myLink:TextField = new TextField();
myLink.defaultTextFormat = myFormat;
myLink.styleSheet = myStyleSheet;
myLink.selectable = false;
myLink.htmlText = "Click <A HREF='event:testing'>here</A>";
myLink.x = 80;
myLink.y = 190;
myLink.width = 400;
myLink.height = 30;
addChild(myLink);

addEventListener(TextEvent.LINK, textLinkClick);
function textLinkClick(event:TextEvent) {
	trace(event.text);
}
