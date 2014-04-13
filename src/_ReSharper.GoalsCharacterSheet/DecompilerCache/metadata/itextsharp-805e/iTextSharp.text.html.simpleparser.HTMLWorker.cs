// Type: iTextSharp.text.html.simpleparser.HTMLWorker
// Assembly: itextsharp, Version=5.4.3.0, Culture=neutral, PublicKeyToken=8354ae6d2174ddca
// Assembly location: C:\Users\Aaron\SkyDrive\AaronApps\GoalsCharacterSheet\lib\itextsharp.dll

using iTextSharp.text;
using iTextSharp.text.pdf.draw;
using iTextSharp.text.xml.simpleparser;
using System;
using System.Collections.Generic;
using System.IO;

namespace iTextSharp.text.html.simpleparser
{
    public class HTMLWorker : ISimpleXMLDocHandler, IDocListener, IElementListener, IDisposable
    {
        public const string FONT_PROVIDER = "font_factory";
        public const string IMG_BASEURL = "img_baseurl";
        public const string IMG_PROCESSOR = "img_interface";
        public const string IMG_PROVIDER = "img_provider";
        public const string IMG_STORE = "img_static";
        public const string LINK_PROVIDER = "alink_interface";
        protected internal bool skipText;
        protected internal IDictionary<string, IHTMLTagProcessor> tags;
        protected Paragraph currentParagraph;
        protected IDocListener document;
        protected List<IElement> objectList;
        protected Stack<IElement> stack;
        public HTMLWorker(IDocListener document);
        public HTMLWorker(IDocListener document, IDictionary<string, IHTMLTagProcessor> tags, StyleSheet style);
        public int PageCount { set; }
        public static List<IElement> ParseToList(TextReader reader, StyleSheet style);
        public static List<IElement> ParseToList(TextReader reader, StyleSheet style, Dictionary<string, object> providers);
        public static List<IElement> ParseToList(TextReader reader, StyleSheet style, IDictionary<string, IHTMLTagProcessor> tags, Dictionary<string, object> providers);
        public virtual void Dispose();
        public virtual void EndDocument();
        public virtual void EndElement(string tag);
        public virtual void StartDocument();
        public virtual void StartElement(string tag, IDictionary<string, string> attrs);
        public virtual void Text(string content);
        public bool Add(IElement element);
        public void CarriageReturn();
        public void Close();
        public CellWrapper CreateCell(string tag);
        public Chunk CreateChunk(string content);
        public Image CreateImage(IDictionary<string, string> attrs);
        public LineSeparator CreateLineSeparator(IDictionary<string, string> attrs);
        public List CreateList(string tag);
        public ListItem CreateListItem();
        public Paragraph CreateParagraph();
        public void FlushContent();
        public IDictionary<string, object> GetInterfaceProps();
        public bool IsInsidePRE();
        public bool IsPendingLI();
        public bool IsPendingTD();
        public bool IsPendingTR();
        public bool IsSkipText();
        public void NewLine();
        public bool NewPage();
        public void Open();
        public void Parse(TextReader reader);
        public void PopTableState();
        public void ProcessImage(Image img, IDictionary<string, string> attrs);
        public void ProcessLink();
        public void ProcessList();
        public void ProcessListItem();
        public void ProcessRow();
        public void ProcessTable();
        public void PushTableState();
        public void PushToStack(IElement element);
        public void ResetPageCount();
        public void SetInsidePRE(bool insidePRE);
        public void SetInterfaceProps(Dictionary<string, object> providers);
        public bool SetMarginMirroring(bool marginMirroring);
        public bool SetMarginMirroringTopBottom(bool marginMirroring);
        public bool SetMargins(float marginLeft, float marginRight, float marginTop, float marginBottom);
        public bool SetPageSize(Rectangle pageSize);
        public void SetPendingLI(bool pendingLI);
        public void SetPendingTD(bool pendingTD);
        public void SetPendingTR(bool pendingTR);
        public void SetProviders(IDictionary<string, object> providers);
        public void SetSkipText(bool skipText);
        public void SetStyleSheet(StyleSheet style);
        public void SetSupportedTags(IDictionary<string, IHTMLTagProcessor> tags);
        public void UpdateChain(string tag, IDictionary<string, string> attrs);
        public void UpdateChain(string tag);
    }
}
