.class public Lcom/android/server/enterprise/TypefaceFinder;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/TypefaceFinder$TypefaceSortByName;
    }
.end annotation


# static fields
.field public static final DEFAULT_FONT_VALUE:Ljava/lang/String; = "default"

.field static final FONT_ASSET_DIR:Ljava/lang/String; = "xml"

.field private static final TAG:Ljava/lang/String; = "TypefaceFinder"


# instance fields
.field public context:Landroid/content/Context;

.field public final mTypefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 210
    return-void
.end method


# virtual methods
.method public findMatchingTypeface(Ljava/lang/String;)Lcom/android/server/enterprise/Typeface;
    .locals 3
    .parameter "typefaceFilename"

    .prologue
    .line 376
    const/4 v1, 0x0

    .line 381
    .local v1, typeface:Lcom/android/server/enterprise/Typeface;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #typeface:Lcom/android/server/enterprise/Typeface;
    check-cast v1, Lcom/android/server/enterprise/Typeface;

    .line 387
    .restart local v1       #typeface:Lcom/android/server/enterprise/Typeface;
    invoke-virtual {v1}, Lcom/android/server/enterprise/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    :cond_0
    return-object v1

    .line 392
    :cond_1
    const/4 v1, 0x0

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/Typeface;
    .locals 5
    .parameter "fontName"

    .prologue
    .line 406
    const/4 v1, 0x0

    .line 408
    .local v1, typeface:Lcom/android/server/enterprise/Typeface;
    const-string v2, "TypefaceFinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findMatchingTypefaceByName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #typeface:Lcom/android/server/enterprise/Typeface;
    check-cast v1, Lcom/android/server/enterprise/Typeface;

    .line 416
    .restart local v1       #typeface:Lcom/android/server/enterprise/Typeface;
    const-string v2, "TypefaceFinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findMatchingTypeface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/enterprise/Typeface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v1}, Lcom/android/server/enterprise/Typeface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    :cond_0
    return-object v1

    .line 422
    :cond_1
    const/4 v1, 0x0

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 6
    .parameter "assetManager"
    .parameter "fontPackageName"

    .prologue
    .line 111
    const/4 v3, 0x0

    .line 115
    .local v3, xmlfiles:[Ljava/lang/String;
    :try_start_0
    const-string v4, "xml"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 135
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xml/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 137
    .local v2, in:Ljava/io/InputStream;
    aget-object v4, v3, v1

    invoke-virtual {p0, v4, v2, p2}, Lcom/android/server/enterprise/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .end local v2           #in:Ljava/io/InputStream;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 121
    .local v0, ex:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 151
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_2
    return v4

    .restart local v1       #i:I
    :cond_0
    const/4 v4, 0x1

    goto :goto_2

    .line 141
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public getMonospaceEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 3
    .parameter "entries"
    .parameter "entryValues"

    .prologue
    .line 334
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 336
    const-string v2, "default"

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 340
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getMonospaceName()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getSansEntries(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 4
    .parameter "entries"
    .parameter "entryValues"
    .parameter "fontPackageName"

    .prologue
    .line 239
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v2, "default"

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    new-instance v3, Lcom/android/server/enterprise/TypefaceFinder$TypefaceSortByName;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/TypefaceFinder$TypefaceSortByName;-><init>(Lcom/android/server/enterprise/TypefaceFinder;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getSansName()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getSerifEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 3
    .parameter "entries"
    .parameter "entryValues"

    .prologue
    .line 292
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v2, "default"

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 298
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getSerifName()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "xmlFilename"
    .parameter "inStream"
    .parameter "fontPackageName"

    .prologue
    .line 167
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 169
    .local v3, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 171
    .local v2, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 175
    .local v4, xr:Lorg/xml/sax/XMLReader;
    new-instance v0, Lcom/android/server/enterprise/TypefaceParser;

    invoke-direct {v0}, Lcom/android/server/enterprise/TypefaceParser;-><init>()V

    .line 177
    .local v0, fontParser:Lcom/android/server/enterprise/TypefaceParser;
    invoke-interface {v4, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 179
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 183
    invoke-virtual {v0}, Lcom/android/server/enterprise/TypefaceParser;->getParsedData()Lcom/android/server/enterprise/Typeface;

    move-result-object v1

    .line 187
    .local v1, newTypeface:Lcom/android/server/enterprise/Typeface;
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1, p3}, Lcom/android/server/enterprise/Typeface;->setFontPackageName(Ljava/lang/String;)V

    .line 192
    iget-object v5, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0           #fontParser:Lcom/android/server/enterprise/TypefaceParser;
    .end local v1           #newTypeface:Lcom/android/server/enterprise/Typeface;
    .end local v2           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v3           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v4           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v5

    goto :goto_0
.end method
