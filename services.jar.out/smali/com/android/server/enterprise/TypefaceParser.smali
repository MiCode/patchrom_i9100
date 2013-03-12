.class public Lcom/android/server/enterprise/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TypefaceParser.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "displayname"

.field private static final NODE_DROIDNAME:Ljava/lang/String; = "droidname"

.field private static final NODE_FILE:Ljava/lang/String; = "file"

.field private static final NODE_FILENAME:Ljava/lang/String; = "filename"

.field private static final NODE_FONT:Ljava/lang/String; = "font"

.field private static final NODE_MONOSPACE:Ljava/lang/String; = "monospace"

.field private static final NODE_SANS:Ljava/lang/String; = "sans"

.field private static final NODE_SERIF:Ljava/lang/String; = "serif"


# instance fields
.field private in_droidname:Z

.field private in_file:Z

.field private in_filename:Z

.field private in_font:Z

.field private in_monospace:Z

.field private in_sans:Z

.field private in_serif:Z

.field private mFont:Lcom/android/server/enterprise/Typeface;

.field private mFontFile:Lcom/android/server/enterprise/TypefaceFile;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_font:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_sans:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_serif:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_monospace:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_file:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_filename:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_droidname:Z

    .line 100
    iput-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    .line 102
    iput-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/TypefaceFile;->setFileName(Ljava/lang/String;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/TypefaceFile;->setDroidName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 140
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 230
    const-string v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_font:Z

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const-string v0, "sans"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_sans:Z

    goto :goto_0

    .line 242
    :cond_2
    const-string v0, "serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_serif:Z

    goto :goto_0

    .line 248
    :cond_3
    const-string v0, "monospace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_monospace:Z

    goto :goto_0

    .line 254
    :cond_4
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 256
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_file:Z

    .line 258
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    if-eqz v0, :cond_0

    .line 260
    iget-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_sans:Z

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/Typeface;->mSansFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_serif:Z

    if-eqz v0, :cond_6

    .line 268
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/Typeface;->mSerifFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_monospace:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/Typeface;->mMonospaceFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_7
    const-string v0, "filename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 284
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_filename:Z

    goto :goto_0

    .line 288
    :cond_8
    const-string v0, "droidname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_droidname:Z

    goto :goto_0
.end method

.method public getParsedData()Lcom/android/server/enterprise/Typeface;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/android/server/enterprise/Typeface;

    invoke-direct {v0}, Lcom/android/server/enterprise/Typeface;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    .line 130
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 160
    const-string v1, "font"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_font:Z

    .line 164
    const-string v1, "displayname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, attrValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/Typeface;->setName(Ljava/lang/String;)V

    .line 210
    .end local v0           #attrValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const-string v1, "sans"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_sans:Z

    goto :goto_0

    .line 176
    :cond_2
    const-string v1, "serif"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_serif:Z

    goto :goto_0

    .line 182
    :cond_3
    const-string v1, "monospace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 184
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_monospace:Z

    goto :goto_0

    .line 188
    :cond_4
    const-string v1, "file"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_file:Z

    .line 192
    new-instance v1, Lcom/android/server/enterprise/TypefaceFile;

    invoke-direct {v1}, Lcom/android/server/enterprise/TypefaceFile;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    goto :goto_0

    .line 196
    :cond_5
    const-string v1, "filename"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 198
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_filename:Z

    goto :goto_0

    .line 202
    :cond_6
    const-string v1, "droidname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_droidname:Z

    goto :goto_0
.end method
